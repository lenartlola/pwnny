#!/usr/bin/env python
# =============================================================================
# pwn_devil
# by LenartLola
#
# This is a template for developing exploits for CTF challenges.
# Including a customizable exploit function using pwntools to interact with
# the target binary or remote server.
#
# Usage:
#   To run locally:
#     ./pwn_devil.py LOCAL [Optional arguments]
#
#   To connect to a remote server:
#     ./pwn_devil.py REMOTE [Optional arguments]
# =============================================================================

from pwn import *

# Set up context to use 64-bit architecture
context.arch = 'amd64'

binary = './binary'   # Replace with the name of the binary file
host = 'example.com'  # Replace with the address of the remote server
port = 1337           # Replace with the port number for the remote server


# This function can be used to find offset particularly in context of buffer overflow
def find_offset():
    # The pattern size can be changed
    pattern = cyclic(5000)
    p = connect()
    p.sendline(pattern)
    response = p.recvall()
    # Find the offset of the R/EIP register in the cyclic pattern
    offset = cyclic_find(response)

    # Print the offset and return it
    log.info(f"Offset: {offset}")
    return offset

# This function can be used to exploit buffer overflow, it takes a binary file and find the desired offset
# then generate a payload and send it, and then the program may go brrr
def buffer_overflow_exploit(p):
    offset = find_offset()
    payload = b'A' * offset
    payload += p64(0xdeadbeef)  # Replace with the desired address to jump to, it may be a value to change
    p.sendline(payload)
    response = p.recvall()

    log.success("Exploit completed!")

def connect():
    # If running the script locally with a binary file
    if args.LOCAL:
        p = process(binary)
    else:
        p = remote(host, port)
    return p

def exploit(p):
    # Write your exploit code here
    pass

if __name__ == '__main__':
    p = connect()
    exploit(p)
    p.interactive()
