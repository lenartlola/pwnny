# Pwnny

An Arch Linux based docker container prepared to PWN/RE category.

## Usage:

> You should have docker running.

Create the container

```bash
make
```

if you are logged out and want to re-enter into the container:

```bash
make docker_run
```

To delete everything (**WARNING** you shall not run this command unless you really know what you are doing!):

```bash
make prune
```

## Tools:

- git
- vim/nvim
- make
- gcc/gdb
- r2
- nasm
- pwntools/pwndbg
- ropgadget
- checksec

## Notes:

Here are some notes about binary exploitation or **PWN**

When doing a pwn challenge and especially if you are beginner, you may want to check out some of these concepts.

- Buffer overflow
- [Format string vulnerability](https://ctf101.org/binary-exploitation/what-is-a-format-string-vulnerability/)
- Use-after-free
- Return-oriented programming (ROP)
- Heap exploitation
- Control-flow hijacking
- Race conditions
- Shellcode injection
- Time-of-check to time-of-use (TOCTTOU) race conditions
- Null byte injection
- Off-by-one errors
- Stack pivoting
- Integer truncation
- Signedness errors
- Function pointer overwrites
- Bit flipping
- Side-channel attacks
- Privilege escalation
- Kernel exploitation
- Canary bypass
- Address space layout randomization (ASLR) bypass
- Data execution prevention (DEP) bypass

## LICENSE

Who cares?
