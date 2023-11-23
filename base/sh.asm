
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      17:	90                   	nop
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 96 00 00 00    	jg     b7 <main+0xb7>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 b4 12 00 00       	push   $0x12b4
      2b:	e8 73 0d 00 00       	call   da3 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d 42 19 00 00 20 	cmpb   $0x20,0x1942
      47:	0f 84 8d 00 00 00    	je     da <main+0xda>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 06 0d 00 00       	call   d5b <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 63                	je     c5 <main+0xc5>
    wait();
      62:	e8 04 0d 00 00       	call   d6b <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 e8 11 00 00       	push   $0x11e8
      6f:	6a 02                	push   $0x2
      71:	e8 4a 0e 00 00       	call   ec0 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 40 19 00 00       	push   $0x1940
      82:	e8 59 0b 00 00       	call   be0 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 40 19 00 00       	push   $0x1940
      90:	e8 ab 0b 00 00       	call   c40 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 40 19 00 00 	movzbl 0x1940,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 0f                	je     b2 <main+0xb2>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d 41 19 00 00 64 	cmpb   $0x64,0x1941
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
  exit();
      b2:	e8 ac 0c 00 00       	call   d63 <exit>
      close(fd);
      b7:	83 ec 0c             	sub    $0xc,%esp
      ba:	50                   	push   %eax
      bb:	e8 cb 0c 00 00       	call   d8b <close>
      break;
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	eb a2                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c5:	83 ec 0c             	sub    $0xc,%esp
      c8:	68 40 19 00 00       	push   $0x1940
      cd:	e8 de 09 00 00       	call   ab0 <parsecmd>
      d2:	89 04 24             	mov    %eax,(%esp)
      d5:	e8 d6 00 00 00       	call   1b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      da:	83 ec 0c             	sub    $0xc,%esp
      dd:	68 40 19 00 00       	push   $0x1940
      e2:	e8 c9 0a 00 00       	call   bb0 <strlen>
      if(chdir(buf+3) < 0)
      e7:	c7 04 24 43 19 00 00 	movl   $0x1943,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      ee:	c6 80 3f 19 00 00 00 	movb   $0x0,0x193f(%eax)
      if(chdir(buf+3) < 0)
      f5:	e8 d9 0c 00 00       	call   dd3 <chdir>
      fa:	83 c4 10             	add    $0x10,%esp
      fd:	85 c0                	test   %eax,%eax
      ff:	0f 89 62 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     105:	51                   	push   %ecx
     106:	68 43 19 00 00       	push   $0x1943
     10b:	68 bc 12 00 00       	push   $0x12bc
     110:	6a 02                	push   $0x2
     112:	e8 a9 0d 00 00       	call   ec0 <printf>
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 48 ff ff ff       	jmp    67 <main+0x67>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 eb 11 00 00       	push   $0x11eb
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 5d 08             	mov    0x8(%ebp),%ebx
     138:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 e8 11 00 00       	push   $0x11e8
     143:	6a 02                	push   $0x2
     145:	e8 76 0d 00 00       	call   ec0 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 8a 0a 00 00       	call   be0 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 e1 0a 00 00       	call   c40 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
     165:	19 c0                	sbb    %eax,%eax
}
     167:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16a:	5b                   	pop    %ebx
     16b:	5e                   	pop    %esi
     16c:	5d                   	pop    %ebp
     16d:	c3                   	ret
     16e:	66 90                	xchg   %ax,%ax

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 b0 12 00 00       	push   $0x12b0
     17e:	6a 02                	push   $0x2
     180:	e8 3b 0d 00 00       	call   ec0 <printf>
  exit();
     185:	e8 d9 0b 00 00       	call   d63 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <fork1>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     196:	e8 c0 0b 00 00       	call   d5b <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 02                	je     1a2 <fork1+0x12>
  return pid;
}
     1a0:	c9                   	leave
     1a1:	c3                   	ret
    panic("fork");
     1a2:	83 ec 0c             	sub    $0xc,%esp
     1a5:	68 eb 11 00 00       	push   $0x11eb
     1aa:	e8 c1 ff ff ff       	call   170 <panic>
     1af:	90                   	nop

000001b0 <runcmd>:
{
     1b0:	55                   	push   %ebp
     1b1:	89 e5                	mov    %esp,%ebp
     1b3:	53                   	push   %ebx
     1b4:	83 ec 04             	sub    $0x4,%esp
     1b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ba:	85 db                	test   %ebx,%ebx
     1bc:	74 2a                	je     1e8 <runcmd+0x38>
  switch(cmd->type){
     1be:	83 3b 05             	cmpl   $0x5,(%ebx)
     1c1:	0f 87 94 00 00 00    	ja     25b <runcmd+0xab>
     1c7:	8b 03                	mov    (%ebx),%eax
     1c9:	ff 24 85 ec 12 00 00 	jmp    *0x12ec(,%eax,4)
    printf(2, "Redirection Not Implemented\n");
     1d0:	53                   	push   %ebx
     1d1:	53                   	push   %ebx
     1d2:	68 07 12 00 00       	push   $0x1207
     1d7:	6a 02                	push   $0x2
     1d9:	e8 e2 0c 00 00       	call   ec0 <printf>
    break;
     1de:	83 c4 10             	add    $0x10,%esp
     1e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit();
     1e8:	e8 76 0b 00 00       	call   d63 <exit>
    printf(2, "Backgrounding not implemented\n");
     1ed:	50                   	push   %eax
     1ee:	50                   	push   %eax
     1ef:	68 cc 12 00 00       	push   $0x12cc
     1f4:	6a 02                	push   $0x2
     1f6:	e8 c5 0c 00 00       	call   ec0 <printf>
    break;
     1fb:	83 c4 10             	add    $0x10,%esp
     1fe:	eb e8                	jmp    1e8 <runcmd+0x38>
    if(ecmd->argv[0] == 0)
     200:	8b 43 04             	mov    0x4(%ebx),%eax
     203:	85 c0                	test   %eax,%eax
     205:	74 e1                	je     1e8 <runcmd+0x38>
    exec(ecmd->argv[0], ecmd->argv);
     207:	52                   	push   %edx
     208:	52                   	push   %edx
     209:	8d 53 04             	lea    0x4(%ebx),%edx
     20c:	52                   	push   %edx
     20d:	50                   	push   %eax
     20e:	e8 88 0b 00 00       	call   d9b <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     213:	83 c4 0c             	add    $0xc,%esp
     216:	ff 73 04             	push   0x4(%ebx)
     219:	68 f7 11 00 00       	push   $0x11f7
     21e:	6a 02                	push   $0x2
     220:	e8 9b 0c 00 00       	call   ec0 <printf>
    break;
     225:	83 c4 10             	add    $0x10,%esp
     228:	eb be                	jmp    1e8 <runcmd+0x38>
    printf(2, "Pipe Not implemented\n");
     22a:	52                   	push   %edx
     22b:	52                   	push   %edx
     22c:	68 31 12 00 00       	push   $0x1231
     231:	6a 02                	push   $0x2
     233:	e8 88 0c 00 00       	call   ec0 <printf>
    break;
     238:	83 c4 10             	add    $0x10,%esp
     23b:	eb ab                	jmp    1e8 <runcmd+0x38>
    int fstatus = fork1();
     23d:	e8 4e ff ff ff       	call   190 <fork1>
    if(fstatus == -1) {
     242:	83 f8 ff             	cmp    $0xffffffff,%eax
     245:	74 2c                	je     273 <runcmd+0xc3>
    if(fstatus == 0) 
     247:	85 c0                	test   %eax,%eax
     249:	74 1d                	je     268 <runcmd+0xb8>
    wait();
     24b:	e8 1b 0b 00 00       	call   d6b <wait>
    runcmd(lcmd->right);
     250:	83 ec 0c             	sub    $0xc,%esp
     253:	ff 73 08             	push   0x8(%ebx)
     256:	e8 55 ff ff ff       	call   1b0 <runcmd>
    panic("runcmd");
     25b:	83 ec 0c             	sub    $0xc,%esp
     25e:	68 f0 11 00 00       	push   $0x11f0
     263:	e8 08 ff ff ff       	call   170 <panic>
      runcmd(lcmd->left);
     268:	83 ec 0c             	sub    $0xc,%esp
     26b:	ff 73 04             	push   0x4(%ebx)
     26e:	e8 3d ff ff ff       	call   1b0 <runcmd>
      printf(2, "fork failed\n");
     273:	51                   	push   %ecx
     274:	51                   	push   %ecx
     275:	68 24 12 00 00       	push   $0x1224
     27a:	6a 02                	push   $0x2
     27c:	e8 3f 0c 00 00       	call   ec0 <printf>
      exit();
     281:	e8 dd 0a 00 00       	call   d63 <exit>
     286:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     28d:	8d 76 00             	lea    0x0(%esi),%esi

00000290 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     290:	55                   	push   %ebp
     291:	89 e5                	mov    %esp,%ebp
     293:	53                   	push   %ebx
     294:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     297:	6a 54                	push   $0x54
     299:	e8 62 0e 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     29e:	83 c4 0c             	add    $0xc,%esp
     2a1:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     2a3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     2a5:	6a 00                	push   $0x0
     2a7:	50                   	push   %eax
     2a8:	e8 33 09 00 00       	call   be0 <memset>
  cmd->type = EXEC;
     2ad:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     2b3:	89 d8                	mov    %ebx,%eax
     2b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     2b8:	c9                   	leave
     2b9:	c3                   	ret
     2ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000002c0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     2c0:	55                   	push   %ebp
     2c1:	89 e5                	mov    %esp,%ebp
     2c3:	53                   	push   %ebx
     2c4:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     2c7:	6a 18                	push   $0x18
     2c9:	e8 32 0e 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     2ce:	83 c4 0c             	add    $0xc,%esp
     2d1:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     2d3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     2d5:	6a 00                	push   $0x0
     2d7:	50                   	push   %eax
     2d8:	e8 03 09 00 00       	call   be0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     2dd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     2e0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     2e6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     2e9:	8b 45 0c             	mov    0xc(%ebp),%eax
     2ec:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     2ef:	8b 45 10             	mov    0x10(%ebp),%eax
     2f2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     2f5:	8b 45 14             	mov    0x14(%ebp),%eax
     2f8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     2fb:	8b 45 18             	mov    0x18(%ebp),%eax
     2fe:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     301:	89 d8                	mov    %ebx,%eax
     303:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     306:	c9                   	leave
     307:	c3                   	ret
     308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     30f:	90                   	nop

00000310 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     310:	55                   	push   %ebp
     311:	89 e5                	mov    %esp,%ebp
     313:	53                   	push   %ebx
     314:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     317:	6a 0c                	push   $0xc
     319:	e8 e2 0d 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     31e:	83 c4 0c             	add    $0xc,%esp
     321:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     323:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     325:	6a 00                	push   $0x0
     327:	50                   	push   %eax
     328:	e8 b3 08 00 00       	call   be0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     32d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     330:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     336:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     339:	8b 45 0c             	mov    0xc(%ebp),%eax
     33c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     33f:	89 d8                	mov    %ebx,%eax
     341:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     344:	c9                   	leave
     345:	c3                   	ret
     346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     34d:	8d 76 00             	lea    0x0(%esi),%esi

00000350 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     350:	55                   	push   %ebp
     351:	89 e5                	mov    %esp,%ebp
     353:	53                   	push   %ebx
     354:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     357:	6a 0c                	push   $0xc
     359:	e8 a2 0d 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     35e:	83 c4 0c             	add    $0xc,%esp
     361:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     363:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     365:	6a 00                	push   $0x0
     367:	50                   	push   %eax
     368:	e8 73 08 00 00       	call   be0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     36d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     370:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     376:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     379:	8b 45 0c             	mov    0xc(%ebp),%eax
     37c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     37f:	89 d8                	mov    %ebx,%eax
     381:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     384:	c9                   	leave
     385:	c3                   	ret
     386:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     38d:	8d 76 00             	lea    0x0(%esi),%esi

00000390 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     390:	55                   	push   %ebp
     391:	89 e5                	mov    %esp,%ebp
     393:	53                   	push   %ebx
     394:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     397:	6a 08                	push   $0x8
     399:	e8 62 0d 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     39e:	83 c4 0c             	add    $0xc,%esp
     3a1:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     3a3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3a5:	6a 00                	push   $0x0
     3a7:	50                   	push   %eax
     3a8:	e8 33 08 00 00       	call   be0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     3ad:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     3b0:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     3b6:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     3b9:	89 d8                	mov    %ebx,%eax
     3bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3be:	c9                   	leave
     3bf:	c3                   	ret

000003c0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	57                   	push   %edi
     3c4:	56                   	push   %esi
     3c5:	53                   	push   %ebx
     3c6:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     3c9:	8b 45 08             	mov    0x8(%ebp),%eax
{
     3cc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     3cf:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     3d2:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     3d4:	39 df                	cmp    %ebx,%edi
     3d6:	72 0f                	jb     3e7 <gettoken+0x27>
     3d8:	eb 25                	jmp    3ff <gettoken+0x3f>
     3da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     3e0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     3e3:	39 fb                	cmp    %edi,%ebx
     3e5:	74 18                	je     3ff <gettoken+0x3f>
     3e7:	0f be 07             	movsbl (%edi),%eax
     3ea:	83 ec 08             	sub    $0x8,%esp
     3ed:	50                   	push   %eax
     3ee:	68 34 19 00 00       	push   $0x1934
     3f3:	e8 08 08 00 00       	call   c00 <strchr>
     3f8:	83 c4 10             	add    $0x10,%esp
     3fb:	85 c0                	test   %eax,%eax
     3fd:	75 e1                	jne    3e0 <gettoken+0x20>
  if(q)
     3ff:	85 f6                	test   %esi,%esi
     401:	74 02                	je     405 <gettoken+0x45>
    *q = s;
     403:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     405:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     408:	3c 3c                	cmp    $0x3c,%al
     40a:	0f 8f d0 00 00 00    	jg     4e0 <gettoken+0x120>
     410:	3c 3a                	cmp    $0x3a,%al
     412:	0f 8f bc 00 00 00    	jg     4d4 <gettoken+0x114>
     418:	84 c0                	test   %al,%al
     41a:	75 44                	jne    460 <gettoken+0xa0>
     41c:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     41e:	8b 4d 14             	mov    0x14(%ebp),%ecx
     421:	85 c9                	test   %ecx,%ecx
     423:	74 05                	je     42a <gettoken+0x6a>
    *eq = s;
     425:	8b 45 14             	mov    0x14(%ebp),%eax
     428:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     42a:	39 df                	cmp    %ebx,%edi
     42c:	72 09                	jb     437 <gettoken+0x77>
     42e:	eb 1f                	jmp    44f <gettoken+0x8f>
    s++;
     430:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     433:	39 fb                	cmp    %edi,%ebx
     435:	74 18                	je     44f <gettoken+0x8f>
     437:	0f be 07             	movsbl (%edi),%eax
     43a:	83 ec 08             	sub    $0x8,%esp
     43d:	50                   	push   %eax
     43e:	68 34 19 00 00       	push   $0x1934
     443:	e8 b8 07 00 00       	call   c00 <strchr>
     448:	83 c4 10             	add    $0x10,%esp
     44b:	85 c0                	test   %eax,%eax
     44d:	75 e1                	jne    430 <gettoken+0x70>
  *ps = s;
     44f:	8b 45 08             	mov    0x8(%ebp),%eax
     452:	89 38                	mov    %edi,(%eax)
  return ret;
}
     454:	8d 65 f4             	lea    -0xc(%ebp),%esp
     457:	89 f0                	mov    %esi,%eax
     459:	5b                   	pop    %ebx
     45a:	5e                   	pop    %esi
     45b:	5f                   	pop    %edi
     45c:	5d                   	pop    %ebp
     45d:	c3                   	ret
     45e:	66 90                	xchg   %ax,%ax
  switch(*s){
     460:	79 66                	jns    4c8 <gettoken+0x108>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     462:	39 df                	cmp    %ebx,%edi
     464:	72 39                	jb     49f <gettoken+0xdf>
  if(eq)
     466:	8b 55 14             	mov    0x14(%ebp),%edx
     469:	85 d2                	test   %edx,%edx
     46b:	0f 84 b3 00 00 00    	je     524 <gettoken+0x164>
    *eq = s;
     471:	8b 45 14             	mov    0x14(%ebp),%eax
     474:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     476:	e9 a9 00 00 00       	jmp    524 <gettoken+0x164>
     47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     47f:	90                   	nop
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     480:	0f be 07             	movsbl (%edi),%eax
     483:	83 ec 08             	sub    $0x8,%esp
     486:	50                   	push   %eax
     487:	68 2c 19 00 00       	push   $0x192c
     48c:	e8 6f 07 00 00       	call   c00 <strchr>
     491:	83 c4 10             	add    $0x10,%esp
     494:	85 c0                	test   %eax,%eax
     496:	75 1f                	jne    4b7 <gettoken+0xf7>
      s++;
     498:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     49b:	39 fb                	cmp    %edi,%ebx
     49d:	74 77                	je     516 <gettoken+0x156>
     49f:	0f be 07             	movsbl (%edi),%eax
     4a2:	83 ec 08             	sub    $0x8,%esp
     4a5:	50                   	push   %eax
     4a6:	68 34 19 00 00       	push   $0x1934
     4ab:	e8 50 07 00 00       	call   c00 <strchr>
     4b0:	83 c4 10             	add    $0x10,%esp
     4b3:	85 c0                	test   %eax,%eax
     4b5:	74 c9                	je     480 <gettoken+0xc0>
    ret = 'a';
     4b7:	be 61 00 00 00       	mov    $0x61,%esi
     4bc:	e9 5d ff ff ff       	jmp    41e <gettoken+0x5e>
     4c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     4c8:	3c 26                	cmp    $0x26,%al
     4ca:	74 08                	je     4d4 <gettoken+0x114>
     4cc:	8d 48 d8             	lea    -0x28(%eax),%ecx
     4cf:	80 f9 01             	cmp    $0x1,%cl
     4d2:	77 8e                	ja     462 <gettoken+0xa2>
  ret = *s;
     4d4:	0f be f0             	movsbl %al,%esi
    s++;
     4d7:	83 c7 01             	add    $0x1,%edi
    break;
     4da:	e9 3f ff ff ff       	jmp    41e <gettoken+0x5e>
     4df:	90                   	nop
  switch(*s){
     4e0:	3c 3e                	cmp    $0x3e,%al
     4e2:	75 1c                	jne    500 <gettoken+0x140>
    if(*s == '>'){
     4e4:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     4e8:	74 1f                	je     509 <gettoken+0x149>
    s++;
     4ea:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     4ed:	be 3e 00 00 00       	mov    $0x3e,%esi
     4f2:	e9 27 ff ff ff       	jmp    41e <gettoken+0x5e>
     4f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4fe:	66 90                	xchg   %ax,%ax
  switch(*s){
     500:	3c 7c                	cmp    $0x7c,%al
     502:	74 d0                	je     4d4 <gettoken+0x114>
     504:	e9 59 ff ff ff       	jmp    462 <gettoken+0xa2>
      s++;
     509:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     50c:	be 2b 00 00 00       	mov    $0x2b,%esi
     511:	e9 08 ff ff ff       	jmp    41e <gettoken+0x5e>
  if(eq)
     516:	8b 45 14             	mov    0x14(%ebp),%eax
     519:	85 c0                	test   %eax,%eax
     51b:	74 05                	je     522 <gettoken+0x162>
    *eq = s;
     51d:	8b 45 14             	mov    0x14(%ebp),%eax
     520:	89 18                	mov    %ebx,(%eax)
      s++;
     522:	89 df                	mov    %ebx,%edi
    ret = 'a';
     524:	be 61 00 00 00       	mov    $0x61,%esi
     529:	e9 21 ff ff ff       	jmp    44f <gettoken+0x8f>
     52e:	66 90                	xchg   %ax,%ax

00000530 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     530:	55                   	push   %ebp
     531:	89 e5                	mov    %esp,%ebp
     533:	57                   	push   %edi
     534:	56                   	push   %esi
     535:	53                   	push   %ebx
     536:	83 ec 0c             	sub    $0xc,%esp
     539:	8b 7d 08             	mov    0x8(%ebp),%edi
     53c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     53f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     541:	39 f3                	cmp    %esi,%ebx
     543:	72 12                	jb     557 <peek+0x27>
     545:	eb 28                	jmp    56f <peek+0x3f>
     547:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     54e:	66 90                	xchg   %ax,%ax
    s++;
     550:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     553:	39 de                	cmp    %ebx,%esi
     555:	74 18                	je     56f <peek+0x3f>
     557:	0f be 03             	movsbl (%ebx),%eax
     55a:	83 ec 08             	sub    $0x8,%esp
     55d:	50                   	push   %eax
     55e:	68 34 19 00 00       	push   $0x1934
     563:	e8 98 06 00 00       	call   c00 <strchr>
     568:	83 c4 10             	add    $0x10,%esp
     56b:	85 c0                	test   %eax,%eax
     56d:	75 e1                	jne    550 <peek+0x20>
  *ps = s;
     56f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     571:	0f be 03             	movsbl (%ebx),%eax
     574:	31 d2                	xor    %edx,%edx
     576:	84 c0                	test   %al,%al
     578:	75 0e                	jne    588 <peek+0x58>
}
     57a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     57d:	89 d0                	mov    %edx,%eax
     57f:	5b                   	pop    %ebx
     580:	5e                   	pop    %esi
     581:	5f                   	pop    %edi
     582:	5d                   	pop    %ebp
     583:	c3                   	ret
     584:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     588:	83 ec 08             	sub    $0x8,%esp
     58b:	50                   	push   %eax
     58c:	ff 75 10             	push   0x10(%ebp)
     58f:	e8 6c 06 00 00       	call   c00 <strchr>
     594:	83 c4 10             	add    $0x10,%esp
     597:	31 d2                	xor    %edx,%edx
     599:	85 c0                	test   %eax,%eax
     59b:	0f 95 c2             	setne  %dl
}
     59e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     5a1:	5b                   	pop    %ebx
     5a2:	89 d0                	mov    %edx,%eax
     5a4:	5e                   	pop    %esi
     5a5:	5f                   	pop    %edi
     5a6:	5d                   	pop    %ebp
     5a7:	c3                   	ret
     5a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5af:	90                   	nop

000005b0 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     5b0:	55                   	push   %ebp
     5b1:	89 e5                	mov    %esp,%ebp
     5b3:	57                   	push   %edi
     5b4:	56                   	push   %esi
     5b5:	53                   	push   %ebx
     5b6:	83 ec 2c             	sub    $0x2c,%esp
     5b9:	8b 75 0c             	mov    0xc(%ebp),%esi
     5bc:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     5bf:	90                   	nop
     5c0:	83 ec 04             	sub    $0x4,%esp
     5c3:	68 64 12 00 00       	push   $0x1264
     5c8:	53                   	push   %ebx
     5c9:	56                   	push   %esi
     5ca:	e8 61 ff ff ff       	call   530 <peek>
     5cf:	83 c4 10             	add    $0x10,%esp
     5d2:	85 c0                	test   %eax,%eax
     5d4:	0f 84 f6 00 00 00    	je     6d0 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     5da:	6a 00                	push   $0x0
     5dc:	6a 00                	push   $0x0
     5de:	53                   	push   %ebx
     5df:	56                   	push   %esi
     5e0:	e8 db fd ff ff       	call   3c0 <gettoken>
     5e5:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     5e7:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     5ea:	50                   	push   %eax
     5eb:	8d 45 e0             	lea    -0x20(%ebp),%eax
     5ee:	50                   	push   %eax
     5ef:	53                   	push   %ebx
     5f0:	56                   	push   %esi
     5f1:	e8 ca fd ff ff       	call   3c0 <gettoken>
     5f6:	83 c4 20             	add    $0x20,%esp
     5f9:	83 f8 61             	cmp    $0x61,%eax
     5fc:	0f 85 d9 00 00 00    	jne    6db <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     602:	83 ff 3c             	cmp    $0x3c,%edi
     605:	74 69                	je     670 <parseredirs+0xc0>
     607:	83 ff 3e             	cmp    $0x3e,%edi
     60a:	74 05                	je     611 <parseredirs+0x61>
     60c:	83 ff 2b             	cmp    $0x2b,%edi
     60f:	75 af                	jne    5c0 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     611:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     614:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     617:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     61a:	89 55 d0             	mov    %edx,-0x30(%ebp)
     61d:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     620:	6a 18                	push   $0x18
     622:	e8 d9 0a 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     627:	83 c4 0c             	add    $0xc,%esp
     62a:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     62c:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     62e:	6a 00                	push   $0x0
     630:	50                   	push   %eax
     631:	e8 aa 05 00 00       	call   be0 <memset>
  cmd->type = REDIR;
     636:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     63c:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     63f:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     642:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     645:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     648:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     64b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     64e:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     655:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     658:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      break;
     65f:	89 7d 08             	mov    %edi,0x8(%ebp)
     662:	e9 59 ff ff ff       	jmp    5c0 <parseredirs+0x10>
     667:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     66e:	66 90                	xchg   %ax,%ax
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     670:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     673:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     676:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     679:	89 55 d0             	mov    %edx,-0x30(%ebp)
     67c:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     67f:	6a 18                	push   $0x18
     681:	e8 7a 0a 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     686:	83 c4 0c             	add    $0xc,%esp
     689:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     68b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     68d:	6a 00                	push   $0x0
     68f:	50                   	push   %eax
     690:	e8 4b 05 00 00       	call   be0 <memset>
  cmd->cmd = subcmd;
     695:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     698:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     69b:	89 7d 08             	mov    %edi,0x8(%ebp)
  cmd->efile = efile;
     69e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     6a1:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
      break;
     6a7:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     6aa:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     6ad:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     6b0:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     6b3:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     6ba:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      break;
     6c1:	e9 fa fe ff ff       	jmp    5c0 <parseredirs+0x10>
     6c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6cd:	8d 76 00             	lea    0x0(%esi),%esi
    }
  }
  return cmd;
}
     6d0:	8b 45 08             	mov    0x8(%ebp),%eax
     6d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6d6:	5b                   	pop    %ebx
     6d7:	5e                   	pop    %esi
     6d8:	5f                   	pop    %edi
     6d9:	5d                   	pop    %ebp
     6da:	c3                   	ret
      panic("missing file for redirection");
     6db:	83 ec 0c             	sub    $0xc,%esp
     6de:	68 47 12 00 00       	push   $0x1247
     6e3:	e8 88 fa ff ff       	call   170 <panic>
     6e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6ef:	90                   	nop

000006f0 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     6f0:	55                   	push   %ebp
     6f1:	89 e5                	mov    %esp,%ebp
     6f3:	57                   	push   %edi
     6f4:	56                   	push   %esi
     6f5:	53                   	push   %ebx
     6f6:	83 ec 30             	sub    $0x30,%esp
     6f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     6fc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     6ff:	68 67 12 00 00       	push   $0x1267
     704:	56                   	push   %esi
     705:	53                   	push   %ebx
     706:	e8 25 fe ff ff       	call   530 <peek>
     70b:	83 c4 10             	add    $0x10,%esp
     70e:	85 c0                	test   %eax,%eax
     710:	0f 85 aa 00 00 00    	jne    7c0 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     716:	83 ec 0c             	sub    $0xc,%esp
     719:	89 c7                	mov    %eax,%edi
     71b:	6a 54                	push   $0x54
     71d:	e8 de 09 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     722:	83 c4 0c             	add    $0xc,%esp
     725:	6a 54                	push   $0x54
     727:	6a 00                	push   $0x0
     729:	89 45 d0             	mov    %eax,-0x30(%ebp)
     72c:	50                   	push   %eax
     72d:	e8 ae 04 00 00       	call   be0 <memset>
  cmd->type = EXEC;
     732:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     735:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     738:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     73e:	56                   	push   %esi
     73f:	53                   	push   %ebx
     740:	50                   	push   %eax
     741:	e8 6a fe ff ff       	call   5b0 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     746:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     749:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     74c:	eb 15                	jmp    763 <parseexec+0x73>
     74e:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     750:	83 ec 04             	sub    $0x4,%esp
     753:	56                   	push   %esi
     754:	53                   	push   %ebx
     755:	ff 75 d4             	push   -0x2c(%ebp)
     758:	e8 53 fe ff ff       	call   5b0 <parseredirs>
     75d:	83 c4 10             	add    $0x10,%esp
     760:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     763:	83 ec 04             	sub    $0x4,%esp
     766:	68 7e 12 00 00       	push   $0x127e
     76b:	56                   	push   %esi
     76c:	53                   	push   %ebx
     76d:	e8 be fd ff ff       	call   530 <peek>
     772:	83 c4 10             	add    $0x10,%esp
     775:	85 c0                	test   %eax,%eax
     777:	75 5f                	jne    7d8 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     779:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     77c:	50                   	push   %eax
     77d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     780:	50                   	push   %eax
     781:	56                   	push   %esi
     782:	53                   	push   %ebx
     783:	e8 38 fc ff ff       	call   3c0 <gettoken>
     788:	83 c4 10             	add    $0x10,%esp
     78b:	85 c0                	test   %eax,%eax
     78d:	74 49                	je     7d8 <parseexec+0xe8>
    if(tok != 'a')
     78f:	83 f8 61             	cmp    $0x61,%eax
     792:	75 62                	jne    7f6 <parseexec+0x106>
    cmd->argv[argc] = q;
     794:	8b 45 e0             	mov    -0x20(%ebp),%eax
     797:	8b 55 d0             	mov    -0x30(%ebp),%edx
     79a:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     79e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     7a1:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     7a5:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     7a8:	83 ff 0a             	cmp    $0xa,%edi
     7ab:	75 a3                	jne    750 <parseexec+0x60>
      panic("too many args");
     7ad:	83 ec 0c             	sub    $0xc,%esp
     7b0:	68 70 12 00 00       	push   $0x1270
     7b5:	e8 b6 f9 ff ff       	call   170 <panic>
     7ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     7c0:	89 75 0c             	mov    %esi,0xc(%ebp)
     7c3:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     7c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7c9:	5b                   	pop    %ebx
     7ca:	5e                   	pop    %esi
     7cb:	5f                   	pop    %edi
     7cc:	5d                   	pop    %ebp
    return parseblock(ps, es);
     7cd:	e9 ae 01 00 00       	jmp    980 <parseblock>
     7d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     7d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     7db:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     7e2:	00 
  cmd->eargv[argc] = 0;
     7e3:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     7ea:	00 
}
     7eb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     7ee:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7f1:	5b                   	pop    %ebx
     7f2:	5e                   	pop    %esi
     7f3:	5f                   	pop    %edi
     7f4:	5d                   	pop    %ebp
     7f5:	c3                   	ret
      panic("syntax");
     7f6:	83 ec 0c             	sub    $0xc,%esp
     7f9:	68 69 12 00 00       	push   $0x1269
     7fe:	e8 6d f9 ff ff       	call   170 <panic>
     803:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     80a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000810 <parsepipe>:
{
     810:	55                   	push   %ebp
     811:	89 e5                	mov    %esp,%ebp
     813:	57                   	push   %edi
     814:	56                   	push   %esi
     815:	53                   	push   %ebx
     816:	83 ec 14             	sub    $0x14,%esp
     819:	8b 75 08             	mov    0x8(%ebp),%esi
     81c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     81f:	57                   	push   %edi
     820:	56                   	push   %esi
     821:	e8 ca fe ff ff       	call   6f0 <parseexec>
  if(peek(ps, es, "|")){
     826:	83 c4 0c             	add    $0xc,%esp
     829:	68 83 12 00 00       	push   $0x1283
  cmd = parseexec(ps, es);
     82e:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     830:	57                   	push   %edi
     831:	56                   	push   %esi
     832:	e8 f9 fc ff ff       	call   530 <peek>
     837:	83 c4 10             	add    $0x10,%esp
     83a:	85 c0                	test   %eax,%eax
     83c:	75 12                	jne    850 <parsepipe+0x40>
}
     83e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     841:	89 d8                	mov    %ebx,%eax
     843:	5b                   	pop    %ebx
     844:	5e                   	pop    %esi
     845:	5f                   	pop    %edi
     846:	5d                   	pop    %ebp
     847:	c3                   	ret
     848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     84f:	90                   	nop
    gettoken(ps, es, 0, 0);
     850:	6a 00                	push   $0x0
     852:	6a 00                	push   $0x0
     854:	57                   	push   %edi
     855:	56                   	push   %esi
     856:	e8 65 fb ff ff       	call   3c0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     85b:	58                   	pop    %eax
     85c:	5a                   	pop    %edx
     85d:	57                   	push   %edi
     85e:	56                   	push   %esi
     85f:	e8 ac ff ff ff       	call   810 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     864:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     86b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     86d:	e8 8e 08 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     872:	83 c4 0c             	add    $0xc,%esp
     875:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     877:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     879:	6a 00                	push   $0x0
     87b:	50                   	push   %eax
     87c:	e8 5f 03 00 00       	call   be0 <memset>
  cmd->left = left;
     881:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     884:	83 c4 10             	add    $0x10,%esp
     887:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     889:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     88f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     891:	89 7e 08             	mov    %edi,0x8(%esi)
}
     894:	8d 65 f4             	lea    -0xc(%ebp),%esp
     897:	5b                   	pop    %ebx
     898:	5e                   	pop    %esi
     899:	5f                   	pop    %edi
     89a:	5d                   	pop    %ebp
     89b:	c3                   	ret
     89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008a0 <parseline>:
{
     8a0:	55                   	push   %ebp
     8a1:	89 e5                	mov    %esp,%ebp
     8a3:	57                   	push   %edi
     8a4:	56                   	push   %esi
     8a5:	53                   	push   %ebx
     8a6:	83 ec 24             	sub    $0x24,%esp
     8a9:	8b 75 08             	mov    0x8(%ebp),%esi
     8ac:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     8af:	57                   	push   %edi
     8b0:	56                   	push   %esi
     8b1:	e8 5a ff ff ff       	call   810 <parsepipe>
  while(peek(ps, es, "&")){
     8b6:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     8b9:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     8bb:	eb 3b                	jmp    8f8 <parseline+0x58>
     8bd:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     8c0:	6a 00                	push   $0x0
     8c2:	6a 00                	push   $0x0
     8c4:	57                   	push   %edi
     8c5:	56                   	push   %esi
     8c6:	e8 f5 fa ff ff       	call   3c0 <gettoken>
  cmd = malloc(sizeof(*cmd));
     8cb:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     8d2:	e8 29 08 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     8d7:	83 c4 0c             	add    $0xc,%esp
     8da:	6a 08                	push   $0x8
     8dc:	6a 00                	push   $0x0
     8de:	50                   	push   %eax
     8df:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     8e2:	e8 f9 02 00 00       	call   be0 <memset>
  cmd->type = BACK;
     8e7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     8ea:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     8ed:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     8f3:	89 5a 04             	mov    %ebx,0x4(%edx)
     8f6:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     8f8:	83 ec 04             	sub    $0x4,%esp
     8fb:	68 85 12 00 00       	push   $0x1285
     900:	57                   	push   %edi
     901:	56                   	push   %esi
     902:	e8 29 fc ff ff       	call   530 <peek>
     907:	83 c4 10             	add    $0x10,%esp
     90a:	85 c0                	test   %eax,%eax
     90c:	75 b2                	jne    8c0 <parseline+0x20>
  if(peek(ps, es, ";")){
     90e:	83 ec 04             	sub    $0x4,%esp
     911:	68 81 12 00 00       	push   $0x1281
     916:	57                   	push   %edi
     917:	56                   	push   %esi
     918:	e8 13 fc ff ff       	call   530 <peek>
     91d:	83 c4 10             	add    $0x10,%esp
     920:	85 c0                	test   %eax,%eax
     922:	75 0c                	jne    930 <parseline+0x90>
}
     924:	8d 65 f4             	lea    -0xc(%ebp),%esp
     927:	89 d8                	mov    %ebx,%eax
     929:	5b                   	pop    %ebx
     92a:	5e                   	pop    %esi
     92b:	5f                   	pop    %edi
     92c:	5d                   	pop    %ebp
     92d:	c3                   	ret
     92e:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     930:	6a 00                	push   $0x0
     932:	6a 00                	push   $0x0
     934:	57                   	push   %edi
     935:	56                   	push   %esi
     936:	e8 85 fa ff ff       	call   3c0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     93b:	58                   	pop    %eax
     93c:	5a                   	pop    %edx
     93d:	57                   	push   %edi
     93e:	56                   	push   %esi
     93f:	e8 5c ff ff ff       	call   8a0 <parseline>
  cmd = malloc(sizeof(*cmd));
     944:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     94b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     94d:	e8 ae 07 00 00       	call   1100 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     952:	83 c4 0c             	add    $0xc,%esp
     955:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     957:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     959:	6a 00                	push   $0x0
     95b:	50                   	push   %eax
     95c:	e8 7f 02 00 00       	call   be0 <memset>
  cmd->left = left;
     961:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     964:	83 c4 10             	add    $0x10,%esp
     967:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     969:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     96f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     971:	89 7e 08             	mov    %edi,0x8(%esi)
}
     974:	8d 65 f4             	lea    -0xc(%ebp),%esp
     977:	5b                   	pop    %ebx
     978:	5e                   	pop    %esi
     979:	5f                   	pop    %edi
     97a:	5d                   	pop    %ebp
     97b:	c3                   	ret
     97c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000980 <parseblock>:
{
     980:	55                   	push   %ebp
     981:	89 e5                	mov    %esp,%ebp
     983:	57                   	push   %edi
     984:	56                   	push   %esi
     985:	53                   	push   %ebx
     986:	83 ec 10             	sub    $0x10,%esp
     989:	8b 5d 08             	mov    0x8(%ebp),%ebx
     98c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     98f:	68 67 12 00 00       	push   $0x1267
     994:	56                   	push   %esi
     995:	53                   	push   %ebx
     996:	e8 95 fb ff ff       	call   530 <peek>
     99b:	83 c4 10             	add    $0x10,%esp
     99e:	85 c0                	test   %eax,%eax
     9a0:	74 4a                	je     9ec <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     9a2:	6a 00                	push   $0x0
     9a4:	6a 00                	push   $0x0
     9a6:	56                   	push   %esi
     9a7:	53                   	push   %ebx
     9a8:	e8 13 fa ff ff       	call   3c0 <gettoken>
  cmd = parseline(ps, es);
     9ad:	58                   	pop    %eax
     9ae:	5a                   	pop    %edx
     9af:	56                   	push   %esi
     9b0:	53                   	push   %ebx
     9b1:	e8 ea fe ff ff       	call   8a0 <parseline>
  if(!peek(ps, es, ")"))
     9b6:	83 c4 0c             	add    $0xc,%esp
     9b9:	68 a3 12 00 00       	push   $0x12a3
  cmd = parseline(ps, es);
     9be:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     9c0:	56                   	push   %esi
     9c1:	53                   	push   %ebx
     9c2:	e8 69 fb ff ff       	call   530 <peek>
     9c7:	83 c4 10             	add    $0x10,%esp
     9ca:	85 c0                	test   %eax,%eax
     9cc:	74 2b                	je     9f9 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     9ce:	6a 00                	push   $0x0
     9d0:	6a 00                	push   $0x0
     9d2:	56                   	push   %esi
     9d3:	53                   	push   %ebx
     9d4:	e8 e7 f9 ff ff       	call   3c0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     9d9:	83 c4 0c             	add    $0xc,%esp
     9dc:	56                   	push   %esi
     9dd:	53                   	push   %ebx
     9de:	57                   	push   %edi
     9df:	e8 cc fb ff ff       	call   5b0 <parseredirs>
}
     9e4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9e7:	5b                   	pop    %ebx
     9e8:	5e                   	pop    %esi
     9e9:	5f                   	pop    %edi
     9ea:	5d                   	pop    %ebp
     9eb:	c3                   	ret
    panic("parseblock");
     9ec:	83 ec 0c             	sub    $0xc,%esp
     9ef:	68 87 12 00 00       	push   $0x1287
     9f4:	e8 77 f7 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     9f9:	83 ec 0c             	sub    $0xc,%esp
     9fc:	68 92 12 00 00       	push   $0x1292
     a01:	e8 6a f7 ff ff       	call   170 <panic>
     a06:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a0d:	8d 76 00             	lea    0x0(%esi),%esi

00000a10 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	53                   	push   %ebx
     a14:	83 ec 04             	sub    $0x4,%esp
     a17:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     a1a:	85 db                	test   %ebx,%ebx
     a1c:	0f 84 7e 00 00 00    	je     aa0 <nulterminate+0x90>
    return 0;

  switch(cmd->type){
     a22:	83 3b 05             	cmpl   $0x5,(%ebx)
     a25:	77 20                	ja     a47 <nulterminate+0x37>
     a27:	8b 03                	mov    (%ebx),%eax
     a29:	ff 24 85 04 13 00 00 	jmp    *0x1304(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     a30:	83 ec 0c             	sub    $0xc,%esp
     a33:	ff 73 04             	push   0x4(%ebx)
     a36:	e8 d5 ff ff ff       	call   a10 <nulterminate>
    nulterminate(lcmd->right);
     a3b:	58                   	pop    %eax
     a3c:	ff 73 08             	push   0x8(%ebx)
     a3f:	e8 cc ff ff ff       	call   a10 <nulterminate>
    break;
     a44:	83 c4 10             	add    $0x10,%esp
    return 0;
     a47:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     a49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a4c:	c9                   	leave
     a4d:	c3                   	ret
     a4e:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     a50:	83 ec 0c             	sub    $0xc,%esp
     a53:	ff 73 04             	push   0x4(%ebx)
     a56:	e8 b5 ff ff ff       	call   a10 <nulterminate>
    break;
     a5b:	83 c4 10             	add    $0x10,%esp
     a5e:	eb e7                	jmp    a47 <nulterminate+0x37>
    for(i=0; ecmd->argv[i]; i++)
     a60:	8b 4b 04             	mov    0x4(%ebx),%ecx
     a63:	8d 43 08             	lea    0x8(%ebx),%eax
     a66:	85 c9                	test   %ecx,%ecx
     a68:	74 dd                	je     a47 <nulterminate+0x37>
     a6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     a70:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     a73:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     a76:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     a79:	8b 50 fc             	mov    -0x4(%eax),%edx
     a7c:	85 d2                	test   %edx,%edx
     a7e:	75 f0                	jne    a70 <nulterminate+0x60>
     a80:	eb c5                	jmp    a47 <nulterminate+0x37>
     a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    nulterminate(rcmd->cmd);
     a88:	83 ec 0c             	sub    $0xc,%esp
     a8b:	ff 73 04             	push   0x4(%ebx)
     a8e:	e8 7d ff ff ff       	call   a10 <nulterminate>
    *rcmd->efile = 0;
     a93:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     a96:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     a99:	c6 00 00             	movb   $0x0,(%eax)
    break;
     a9c:	eb a9                	jmp    a47 <nulterminate+0x37>
     a9e:	66 90                	xchg   %ax,%ax
    return 0;
     aa0:	31 c0                	xor    %eax,%eax
     aa2:	eb a5                	jmp    a49 <nulterminate+0x39>
     aa4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     aab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     aaf:	90                   	nop

00000ab0 <parsecmd>:
{
     ab0:	55                   	push   %ebp
     ab1:	89 e5                	mov    %esp,%ebp
     ab3:	57                   	push   %edi
     ab4:	56                   	push   %esi
  cmd = parseline(&s, es);
     ab5:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     ab8:	53                   	push   %ebx
     ab9:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     abc:	8b 5d 08             	mov    0x8(%ebp),%ebx
     abf:	53                   	push   %ebx
     ac0:	e8 eb 00 00 00       	call   bb0 <strlen>
  cmd = parseline(&s, es);
     ac5:	59                   	pop    %ecx
     ac6:	5e                   	pop    %esi
  es = s + strlen(s);
     ac7:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     ac9:	53                   	push   %ebx
     aca:	57                   	push   %edi
     acb:	e8 d0 fd ff ff       	call   8a0 <parseline>
  peek(&s, es, "");
     ad0:	83 c4 0c             	add    $0xc,%esp
     ad3:	68 30 12 00 00       	push   $0x1230
  cmd = parseline(&s, es);
     ad8:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     ada:	53                   	push   %ebx
     adb:	57                   	push   %edi
     adc:	e8 4f fa ff ff       	call   530 <peek>
  if(s != es){
     ae1:	8b 45 08             	mov    0x8(%ebp),%eax
     ae4:	83 c4 10             	add    $0x10,%esp
     ae7:	39 d8                	cmp    %ebx,%eax
     ae9:	75 13                	jne    afe <parsecmd+0x4e>
  nulterminate(cmd);
     aeb:	83 ec 0c             	sub    $0xc,%esp
     aee:	56                   	push   %esi
     aef:	e8 1c ff ff ff       	call   a10 <nulterminate>
}
     af4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     af7:	89 f0                	mov    %esi,%eax
     af9:	5b                   	pop    %ebx
     afa:	5e                   	pop    %esi
     afb:	5f                   	pop    %edi
     afc:	5d                   	pop    %ebp
     afd:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     afe:	52                   	push   %edx
     aff:	50                   	push   %eax
     b00:	68 a5 12 00 00       	push   $0x12a5
     b05:	6a 02                	push   $0x2
     b07:	e8 b4 03 00 00       	call   ec0 <printf>
    panic("syntax");
     b0c:	c7 04 24 69 12 00 00 	movl   $0x1269,(%esp)
     b13:	e8 58 f6 ff ff       	call   170 <panic>
     b18:	66 90                	xchg   %ax,%ax
     b1a:	66 90                	xchg   %ax,%ax
     b1c:	66 90                	xchg   %ax,%ax
     b1e:	66 90                	xchg   %ax,%ax

00000b20 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     b20:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     b21:	31 c0                	xor    %eax,%eax
{
     b23:	89 e5                	mov    %esp,%ebp
     b25:	53                   	push   %ebx
     b26:	8b 4d 08             	mov    0x8(%ebp),%ecx
     b29:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     b30:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     b34:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     b37:	83 c0 01             	add    $0x1,%eax
     b3a:	84 d2                	test   %dl,%dl
     b3c:	75 f2                	jne    b30 <strcpy+0x10>
    ;
  return os;
}
     b3e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b41:	89 c8                	mov    %ecx,%eax
     b43:	c9                   	leave
     b44:	c3                   	ret
     b45:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000b50 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	53                   	push   %ebx
     b54:	8b 55 08             	mov    0x8(%ebp),%edx
     b57:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     b5a:	0f b6 02             	movzbl (%edx),%eax
     b5d:	84 c0                	test   %al,%al
     b5f:	75 17                	jne    b78 <strcmp+0x28>
     b61:	eb 3a                	jmp    b9d <strcmp+0x4d>
     b63:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b67:	90                   	nop
     b68:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     b6c:	83 c2 01             	add    $0x1,%edx
     b6f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     b72:	84 c0                	test   %al,%al
     b74:	74 1a                	je     b90 <strcmp+0x40>
    p++, q++;
     b76:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
     b78:	0f b6 19             	movzbl (%ecx),%ebx
     b7b:	38 c3                	cmp    %al,%bl
     b7d:	74 e9                	je     b68 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
     b7f:	29 d8                	sub    %ebx,%eax
}
     b81:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b84:	c9                   	leave
     b85:	c3                   	ret
     b86:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b8d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
     b90:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     b94:	31 c0                	xor    %eax,%eax
     b96:	29 d8                	sub    %ebx,%eax
}
     b98:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b9b:	c9                   	leave
     b9c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     b9d:	0f b6 19             	movzbl (%ecx),%ebx
     ba0:	31 c0                	xor    %eax,%eax
     ba2:	eb db                	jmp    b7f <strcmp+0x2f>
     ba4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     baf:	90                   	nop

00000bb0 <strlen>:

uint
strlen(char *s)
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     bb6:	80 3a 00             	cmpb   $0x0,(%edx)
     bb9:	74 15                	je     bd0 <strlen+0x20>
     bbb:	31 c0                	xor    %eax,%eax
     bbd:	8d 76 00             	lea    0x0(%esi),%esi
     bc0:	83 c0 01             	add    $0x1,%eax
     bc3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     bc7:	89 c1                	mov    %eax,%ecx
     bc9:	75 f5                	jne    bc0 <strlen+0x10>
    ;
  return n;
}
     bcb:	89 c8                	mov    %ecx,%eax
     bcd:	5d                   	pop    %ebp
     bce:	c3                   	ret
     bcf:	90                   	nop
  for(n = 0; s[n]; n++)
     bd0:	31 c9                	xor    %ecx,%ecx
}
     bd2:	5d                   	pop    %ebp
     bd3:	89 c8                	mov    %ecx,%eax
     bd5:	c3                   	ret
     bd6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bdd:	8d 76 00             	lea    0x0(%esi),%esi

00000be0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     be0:	55                   	push   %ebp
     be1:	89 e5                	mov    %esp,%ebp
     be3:	57                   	push   %edi
     be4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     be7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     bea:	8b 45 0c             	mov    0xc(%ebp),%eax
     bed:	89 d7                	mov    %edx,%edi
     bef:	fc                   	cld
     bf0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     bf2:	8b 7d fc             	mov    -0x4(%ebp),%edi
     bf5:	89 d0                	mov    %edx,%eax
     bf7:	c9                   	leave
     bf8:	c3                   	ret
     bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000c00 <strchr>:

char*
strchr(const char *s, char c)
{
     c00:	55                   	push   %ebp
     c01:	89 e5                	mov    %esp,%ebp
     c03:	8b 45 08             	mov    0x8(%ebp),%eax
     c06:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     c0a:	0f b6 10             	movzbl (%eax),%edx
     c0d:	84 d2                	test   %dl,%dl
     c0f:	75 12                	jne    c23 <strchr+0x23>
     c11:	eb 1d                	jmp    c30 <strchr+0x30>
     c13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c17:	90                   	nop
     c18:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     c1c:	83 c0 01             	add    $0x1,%eax
     c1f:	84 d2                	test   %dl,%dl
     c21:	74 0d                	je     c30 <strchr+0x30>
    if(*s == c)
     c23:	38 d1                	cmp    %dl,%cl
     c25:	75 f1                	jne    c18 <strchr+0x18>
      return (char*)s;
  return 0;
}
     c27:	5d                   	pop    %ebp
     c28:	c3                   	ret
     c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     c30:	31 c0                	xor    %eax,%eax
}
     c32:	5d                   	pop    %ebp
     c33:	c3                   	ret
     c34:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c3f:	90                   	nop

00000c40 <gets>:

char*
gets(char *buf, int max)
{
     c40:	55                   	push   %ebp
     c41:	89 e5                	mov    %esp,%ebp
     c43:	57                   	push   %edi
     c44:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     c45:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
     c48:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     c49:	31 db                	xor    %ebx,%ebx
{
     c4b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     c4e:	eb 27                	jmp    c77 <gets+0x37>
    cc = read(0, &c, 1);
     c50:	83 ec 04             	sub    $0x4,%esp
     c53:	6a 01                	push   $0x1
     c55:	56                   	push   %esi
     c56:	6a 00                	push   $0x0
     c58:	e8 1e 01 00 00       	call   d7b <read>
    if(cc < 1)
     c5d:	83 c4 10             	add    $0x10,%esp
     c60:	85 c0                	test   %eax,%eax
     c62:	7e 1d                	jle    c81 <gets+0x41>
      break;
    buf[i++] = c;
     c64:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     c68:	8b 55 08             	mov    0x8(%ebp),%edx
     c6b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     c6f:	3c 0a                	cmp    $0xa,%al
     c71:	74 10                	je     c83 <gets+0x43>
     c73:	3c 0d                	cmp    $0xd,%al
     c75:	74 0c                	je     c83 <gets+0x43>
  for(i=0; i+1 < max; ){
     c77:	89 df                	mov    %ebx,%edi
     c79:	83 c3 01             	add    $0x1,%ebx
     c7c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     c7f:	7c cf                	jl     c50 <gets+0x10>
     c81:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
     c83:	8b 45 08             	mov    0x8(%ebp),%eax
     c86:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     c8a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c8d:	5b                   	pop    %ebx
     c8e:	5e                   	pop    %esi
     c8f:	5f                   	pop    %edi
     c90:	5d                   	pop    %ebp
     c91:	c3                   	ret
     c92:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ca0 <stat>:

int
stat(char *n, struct stat *st)
{
     ca0:	55                   	push   %ebp
     ca1:	89 e5                	mov    %esp,%ebp
     ca3:	56                   	push   %esi
     ca4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     ca5:	83 ec 08             	sub    $0x8,%esp
     ca8:	6a 00                	push   $0x0
     caa:	ff 75 08             	push   0x8(%ebp)
     cad:	e8 f1 00 00 00       	call   da3 <open>
  if(fd < 0)
     cb2:	83 c4 10             	add    $0x10,%esp
     cb5:	85 c0                	test   %eax,%eax
     cb7:	78 27                	js     ce0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     cb9:	83 ec 08             	sub    $0x8,%esp
     cbc:	ff 75 0c             	push   0xc(%ebp)
     cbf:	89 c3                	mov    %eax,%ebx
     cc1:	50                   	push   %eax
     cc2:	e8 f4 00 00 00       	call   dbb <fstat>
  close(fd);
     cc7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     cca:	89 c6                	mov    %eax,%esi
  close(fd);
     ccc:	e8 ba 00 00 00       	call   d8b <close>
  return r;
     cd1:	83 c4 10             	add    $0x10,%esp
}
     cd4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cd7:	89 f0                	mov    %esi,%eax
     cd9:	5b                   	pop    %ebx
     cda:	5e                   	pop    %esi
     cdb:	5d                   	pop    %ebp
     cdc:	c3                   	ret
     cdd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     ce0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     ce5:	eb ed                	jmp    cd4 <stat+0x34>
     ce7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cee:	66 90                	xchg   %ax,%ax

00000cf0 <atoi>:

int
atoi(const char *s)
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	53                   	push   %ebx
     cf4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     cf7:	0f be 02             	movsbl (%edx),%eax
     cfa:	8d 48 d0             	lea    -0x30(%eax),%ecx
     cfd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     d00:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     d05:	77 1e                	ja     d25 <atoi+0x35>
     d07:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d0e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     d10:	83 c2 01             	add    $0x1,%edx
     d13:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     d16:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     d1a:	0f be 02             	movsbl (%edx),%eax
     d1d:	8d 58 d0             	lea    -0x30(%eax),%ebx
     d20:	80 fb 09             	cmp    $0x9,%bl
     d23:	76 eb                	jbe    d10 <atoi+0x20>
  return n;
}
     d25:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     d28:	89 c8                	mov    %ecx,%eax
     d2a:	c9                   	leave
     d2b:	c3                   	ret
     d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d30 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	57                   	push   %edi
     d34:	56                   	push   %esi
     d35:	8b 45 10             	mov    0x10(%ebp),%eax
     d38:	8b 55 08             	mov    0x8(%ebp),%edx
     d3b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     d3e:	85 c0                	test   %eax,%eax
     d40:	7e 13                	jle    d55 <memmove+0x25>
     d42:	01 d0                	add    %edx,%eax
  dst = vdst;
     d44:	89 d7                	mov    %edx,%edi
     d46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d4d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
     d50:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     d51:	39 f8                	cmp    %edi,%eax
     d53:	75 fb                	jne    d50 <memmove+0x20>
  return vdst;
}
     d55:	5e                   	pop    %esi
     d56:	89 d0                	mov    %edx,%eax
     d58:	5f                   	pop    %edi
     d59:	5d                   	pop    %ebp
     d5a:	c3                   	ret

00000d5b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     d5b:	b8 01 00 00 00       	mov    $0x1,%eax
     d60:	cd 40                	int    $0x40
     d62:	c3                   	ret

00000d63 <exit>:
SYSCALL(exit)
     d63:	b8 02 00 00 00       	mov    $0x2,%eax
     d68:	cd 40                	int    $0x40
     d6a:	c3                   	ret

00000d6b <wait>:
SYSCALL(wait)
     d6b:	b8 03 00 00 00       	mov    $0x3,%eax
     d70:	cd 40                	int    $0x40
     d72:	c3                   	ret

00000d73 <pipe>:
SYSCALL(pipe)
     d73:	b8 04 00 00 00       	mov    $0x4,%eax
     d78:	cd 40                	int    $0x40
     d7a:	c3                   	ret

00000d7b <read>:
SYSCALL(read)
     d7b:	b8 05 00 00 00       	mov    $0x5,%eax
     d80:	cd 40                	int    $0x40
     d82:	c3                   	ret

00000d83 <write>:
SYSCALL(write)
     d83:	b8 10 00 00 00       	mov    $0x10,%eax
     d88:	cd 40                	int    $0x40
     d8a:	c3                   	ret

00000d8b <close>:
SYSCALL(close)
     d8b:	b8 15 00 00 00       	mov    $0x15,%eax
     d90:	cd 40                	int    $0x40
     d92:	c3                   	ret

00000d93 <kill>:
SYSCALL(kill)
     d93:	b8 06 00 00 00       	mov    $0x6,%eax
     d98:	cd 40                	int    $0x40
     d9a:	c3                   	ret

00000d9b <exec>:
SYSCALL(exec)
     d9b:	b8 07 00 00 00       	mov    $0x7,%eax
     da0:	cd 40                	int    $0x40
     da2:	c3                   	ret

00000da3 <open>:
SYSCALL(open)
     da3:	b8 0f 00 00 00       	mov    $0xf,%eax
     da8:	cd 40                	int    $0x40
     daa:	c3                   	ret

00000dab <mknod>:
SYSCALL(mknod)
     dab:	b8 11 00 00 00       	mov    $0x11,%eax
     db0:	cd 40                	int    $0x40
     db2:	c3                   	ret

00000db3 <unlink>:
SYSCALL(unlink)
     db3:	b8 12 00 00 00       	mov    $0x12,%eax
     db8:	cd 40                	int    $0x40
     dba:	c3                   	ret

00000dbb <fstat>:
SYSCALL(fstat)
     dbb:	b8 08 00 00 00       	mov    $0x8,%eax
     dc0:	cd 40                	int    $0x40
     dc2:	c3                   	ret

00000dc3 <link>:
SYSCALL(link)
     dc3:	b8 13 00 00 00       	mov    $0x13,%eax
     dc8:	cd 40                	int    $0x40
     dca:	c3                   	ret

00000dcb <mkdir>:
SYSCALL(mkdir)
     dcb:	b8 14 00 00 00       	mov    $0x14,%eax
     dd0:	cd 40                	int    $0x40
     dd2:	c3                   	ret

00000dd3 <chdir>:
SYSCALL(chdir)
     dd3:	b8 09 00 00 00       	mov    $0x9,%eax
     dd8:	cd 40                	int    $0x40
     dda:	c3                   	ret

00000ddb <dup>:
SYSCALL(dup)
     ddb:	b8 0a 00 00 00       	mov    $0xa,%eax
     de0:	cd 40                	int    $0x40
     de2:	c3                   	ret

00000de3 <getpid>:
SYSCALL(getpid)
     de3:	b8 0b 00 00 00       	mov    $0xb,%eax
     de8:	cd 40                	int    $0x40
     dea:	c3                   	ret

00000deb <sbrk>:
SYSCALL(sbrk)
     deb:	b8 0c 00 00 00       	mov    $0xc,%eax
     df0:	cd 40                	int    $0x40
     df2:	c3                   	ret

00000df3 <sleep>:
SYSCALL(sleep)
     df3:	b8 0d 00 00 00       	mov    $0xd,%eax
     df8:	cd 40                	int    $0x40
     dfa:	c3                   	ret

00000dfb <uptime>:
SYSCALL(uptime)
     dfb:	b8 0e 00 00 00       	mov    $0xe,%eax
     e00:	cd 40                	int    $0x40
     e02:	c3                   	ret

00000e03 <shutdown>:
SYSCALL(shutdown)
     e03:	b8 16 00 00 00       	mov    $0x16,%eax
     e08:	cd 40                	int    $0x40
     e0a:	c3                   	ret

00000e0b <cps>:
SYSCALL(cps)
     e0b:	b8 17 00 00 00       	mov    $0x17,%eax
     e10:	cd 40                	int    $0x40
     e12:	c3                   	ret

00000e13 <chpr>:
SYSCALL(chpr)
     e13:	b8 18 00 00 00       	mov    $0x18,%eax
     e18:	cd 40                	int    $0x40
     e1a:	c3                   	ret
     e1b:	66 90                	xchg   %ax,%ax
     e1d:	66 90                	xchg   %ax,%ax
     e1f:	90                   	nop

00000e20 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	57                   	push   %edi
     e24:	56                   	push   %esi
     e25:	53                   	push   %ebx
     e26:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     e28:	89 d1                	mov    %edx,%ecx
{
     e2a:	83 ec 3c             	sub    $0x3c,%esp
     e2d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
     e30:	85 d2                	test   %edx,%edx
     e32:	0f 89 80 00 00 00    	jns    eb8 <printint+0x98>
     e38:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     e3c:	74 7a                	je     eb8 <printint+0x98>
    x = -xx;
     e3e:	f7 d9                	neg    %ecx
    neg = 1;
     e40:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
     e45:	89 45 c4             	mov    %eax,-0x3c(%ebp)
     e48:	31 f6                	xor    %esi,%esi
     e4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     e50:	89 c8                	mov    %ecx,%eax
     e52:	31 d2                	xor    %edx,%edx
     e54:	89 f7                	mov    %esi,%edi
     e56:	f7 f3                	div    %ebx
     e58:	8d 76 01             	lea    0x1(%esi),%esi
     e5b:	0f b6 92 7c 13 00 00 	movzbl 0x137c(%edx),%edx
     e62:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
     e66:	89 ca                	mov    %ecx,%edx
     e68:	89 c1                	mov    %eax,%ecx
     e6a:	39 da                	cmp    %ebx,%edx
     e6c:	73 e2                	jae    e50 <printint+0x30>
  if(neg)
     e6e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     e71:	85 c0                	test   %eax,%eax
     e73:	74 07                	je     e7c <printint+0x5c>
    buf[i++] = '-';
     e75:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    buf[i++] = digits[x % base];
     e7a:	89 f7                	mov    %esi,%edi
     e7c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
     e7f:	8b 75 c0             	mov    -0x40(%ebp),%esi
     e82:	01 df                	add    %ebx,%edi
     e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  while(--i >= 0)
    putc(fd, buf[i]);
     e88:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
     e8b:	83 ec 04             	sub    $0x4,%esp
     e8e:	88 45 d7             	mov    %al,-0x29(%ebp)
     e91:	8d 45 d7             	lea    -0x29(%ebp),%eax
     e94:	6a 01                	push   $0x1
     e96:	50                   	push   %eax
     e97:	56                   	push   %esi
     e98:	e8 e6 fe ff ff       	call   d83 <write>
  while(--i >= 0)
     e9d:	89 f8                	mov    %edi,%eax
     e9f:	83 c4 10             	add    $0x10,%esp
     ea2:	83 ef 01             	sub    $0x1,%edi
     ea5:	39 d8                	cmp    %ebx,%eax
     ea7:	75 df                	jne    e88 <printint+0x68>
}
     ea9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     eac:	5b                   	pop    %ebx
     ead:	5e                   	pop    %esi
     eae:	5f                   	pop    %edi
     eaf:	5d                   	pop    %ebp
     eb0:	c3                   	ret
     eb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     eb8:	31 c0                	xor    %eax,%eax
     eba:	eb 89                	jmp    e45 <printint+0x25>
     ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ec0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     ec0:	55                   	push   %ebp
     ec1:	89 e5                	mov    %esp,%ebp
     ec3:	57                   	push   %edi
     ec4:	56                   	push   %esi
     ec5:	53                   	push   %ebx
     ec6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     ec9:	8b 75 0c             	mov    0xc(%ebp),%esi
{
     ecc:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
     ecf:	0f b6 1e             	movzbl (%esi),%ebx
     ed2:	83 c6 01             	add    $0x1,%esi
     ed5:	84 db                	test   %bl,%bl
     ed7:	74 67                	je     f40 <printf+0x80>
     ed9:	8d 4d 10             	lea    0x10(%ebp),%ecx
     edc:	31 d2                	xor    %edx,%edx
     ede:	89 4d d0             	mov    %ecx,-0x30(%ebp)
     ee1:	eb 34                	jmp    f17 <printf+0x57>
     ee3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     ee7:	90                   	nop
     ee8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
     eeb:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
     ef0:	83 f8 25             	cmp    $0x25,%eax
     ef3:	74 18                	je     f0d <printf+0x4d>
  write(fd, &c, 1);
     ef5:	83 ec 04             	sub    $0x4,%esp
     ef8:	8d 45 e7             	lea    -0x19(%ebp),%eax
     efb:	88 5d e7             	mov    %bl,-0x19(%ebp)
     efe:	6a 01                	push   $0x1
     f00:	50                   	push   %eax
     f01:	57                   	push   %edi
     f02:	e8 7c fe ff ff       	call   d83 <write>
     f07:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
     f0a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
     f0d:	0f b6 1e             	movzbl (%esi),%ebx
     f10:	83 c6 01             	add    $0x1,%esi
     f13:	84 db                	test   %bl,%bl
     f15:	74 29                	je     f40 <printf+0x80>
    c = fmt[i] & 0xff;
     f17:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     f1a:	85 d2                	test   %edx,%edx
     f1c:	74 ca                	je     ee8 <printf+0x28>
      }
    } else if(state == '%'){
     f1e:	83 fa 25             	cmp    $0x25,%edx
     f21:	75 ea                	jne    f0d <printf+0x4d>
      if(c == 'd'){
     f23:	83 f8 25             	cmp    $0x25,%eax
     f26:	0f 84 24 01 00 00    	je     1050 <printf+0x190>
     f2c:	83 e8 63             	sub    $0x63,%eax
     f2f:	83 f8 15             	cmp    $0x15,%eax
     f32:	77 1c                	ja     f50 <printf+0x90>
     f34:	ff 24 85 24 13 00 00 	jmp    *0x1324(,%eax,4)
     f3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f3f:	90                   	nop
        putc(fd, c);
      }
      state = 0;
    }
  }
}
     f40:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f43:	5b                   	pop    %ebx
     f44:	5e                   	pop    %esi
     f45:	5f                   	pop    %edi
     f46:	5d                   	pop    %ebp
     f47:	c3                   	ret
     f48:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f4f:	90                   	nop
  write(fd, &c, 1);
     f50:	83 ec 04             	sub    $0x4,%esp
     f53:	8d 55 e7             	lea    -0x19(%ebp),%edx
     f56:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     f5a:	6a 01                	push   $0x1
     f5c:	52                   	push   %edx
     f5d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f60:	57                   	push   %edi
     f61:	e8 1d fe ff ff       	call   d83 <write>
     f66:	83 c4 0c             	add    $0xc,%esp
     f69:	88 5d e7             	mov    %bl,-0x19(%ebp)
     f6c:	6a 01                	push   $0x1
     f6e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f71:	52                   	push   %edx
     f72:	57                   	push   %edi
     f73:	e8 0b fe ff ff       	call   d83 <write>
        putc(fd, c);
     f78:	83 c4 10             	add    $0x10,%esp
      state = 0;
     f7b:	31 d2                	xor    %edx,%edx
     f7d:	eb 8e                	jmp    f0d <printf+0x4d>
     f7f:	90                   	nop
        printint(fd, *ap, 16, 0);
     f80:	8b 5d d0             	mov    -0x30(%ebp),%ebx
     f83:	83 ec 0c             	sub    $0xc,%esp
     f86:	b9 10 00 00 00       	mov    $0x10,%ecx
     f8b:	8b 13                	mov    (%ebx),%edx
     f8d:	6a 00                	push   $0x0
     f8f:	89 f8                	mov    %edi,%eax
        ap++;
     f91:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
     f94:	e8 87 fe ff ff       	call   e20 <printint>
        ap++;
     f99:	89 5d d0             	mov    %ebx,-0x30(%ebp)
     f9c:	83 c4 10             	add    $0x10,%esp
      state = 0;
     f9f:	31 d2                	xor    %edx,%edx
     fa1:	e9 67 ff ff ff       	jmp    f0d <printf+0x4d>
     fa6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     fad:	8d 76 00             	lea    0x0(%esi),%esi
        s = (char*)*ap;
     fb0:	8b 45 d0             	mov    -0x30(%ebp),%eax
     fb3:	8b 18                	mov    (%eax),%ebx
        ap++;
     fb5:	83 c0 04             	add    $0x4,%eax
     fb8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
     fbb:	85 db                	test   %ebx,%ebx
     fbd:	0f 84 9d 00 00 00    	je     1060 <printf+0x1a0>
        while(*s != 0){
     fc3:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
     fc6:	31 d2                	xor    %edx,%edx
        while(*s != 0){
     fc8:	84 c0                	test   %al,%al
     fca:	0f 84 3d ff ff ff    	je     f0d <printf+0x4d>
     fd0:	8d 55 e7             	lea    -0x19(%ebp),%edx
     fd3:	89 75 d4             	mov    %esi,-0x2c(%ebp)
     fd6:	89 de                	mov    %ebx,%esi
     fd8:	89 d3                	mov    %edx,%ebx
     fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
     fe0:	83 ec 04             	sub    $0x4,%esp
     fe3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
     fe6:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
     fe9:	6a 01                	push   $0x1
     feb:	53                   	push   %ebx
     fec:	57                   	push   %edi
     fed:	e8 91 fd ff ff       	call   d83 <write>
        while(*s != 0){
     ff2:	0f b6 06             	movzbl (%esi),%eax
     ff5:	83 c4 10             	add    $0x10,%esp
     ff8:	84 c0                	test   %al,%al
     ffa:	75 e4                	jne    fe0 <printf+0x120>
      state = 0;
     ffc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
     fff:	31 d2                	xor    %edx,%edx
    1001:	e9 07 ff ff ff       	jmp    f0d <printf+0x4d>
    1006:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    100d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    1010:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    1013:	83 ec 0c             	sub    $0xc,%esp
    1016:	b9 0a 00 00 00       	mov    $0xa,%ecx
    101b:	8b 13                	mov    (%ebx),%edx
    101d:	6a 01                	push   $0x1
    101f:	e9 6b ff ff ff       	jmp    f8f <printf+0xcf>
    1024:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1028:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    102b:	83 ec 04             	sub    $0x4,%esp
    102e:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
    1031:	8b 03                	mov    (%ebx),%eax
        ap++;
    1033:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
    1036:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1039:	6a 01                	push   $0x1
    103b:	52                   	push   %edx
    103c:	57                   	push   %edi
    103d:	e8 41 fd ff ff       	call   d83 <write>
        ap++;
    1042:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    1045:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1048:	31 d2                	xor    %edx,%edx
    104a:	e9 be fe ff ff       	jmp    f0d <printf+0x4d>
    104f:	90                   	nop
  write(fd, &c, 1);
    1050:	83 ec 04             	sub    $0x4,%esp
    1053:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1056:	8d 55 e7             	lea    -0x19(%ebp),%edx
    1059:	6a 01                	push   $0x1
    105b:	e9 11 ff ff ff       	jmp    f71 <printf+0xb1>
    1060:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    1065:	bb 1c 13 00 00       	mov    $0x131c,%ebx
    106a:	e9 61 ff ff ff       	jmp    fd0 <printf+0x110>
    106f:	90                   	nop

00001070 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1070:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1071:	a1 a4 19 00 00       	mov    0x19a4,%eax
{
    1076:	89 e5                	mov    %esp,%ebp
    1078:	57                   	push   %edi
    1079:	56                   	push   %esi
    107a:	53                   	push   %ebx
    107b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    107e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1081:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1088:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    108a:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    108c:	39 ca                	cmp    %ecx,%edx
    108e:	73 30                	jae    10c0 <free+0x50>
    1090:	39 c1                	cmp    %eax,%ecx
    1092:	72 04                	jb     1098 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1094:	39 c2                	cmp    %eax,%edx
    1096:	72 f0                	jb     1088 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1098:	8b 73 fc             	mov    -0x4(%ebx),%esi
    109b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    109e:	39 f8                	cmp    %edi,%eax
    10a0:	74 2e                	je     10d0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    10a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    10a5:	8b 42 04             	mov    0x4(%edx),%eax
    10a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    10ab:	39 f1                	cmp    %esi,%ecx
    10ad:	74 38                	je     10e7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    10af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    10b1:	5b                   	pop    %ebx
  freep = p;
    10b2:	89 15 a4 19 00 00    	mov    %edx,0x19a4
}
    10b8:	5e                   	pop    %esi
    10b9:	5f                   	pop    %edi
    10ba:	5d                   	pop    %ebp
    10bb:	c3                   	ret
    10bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    10c0:	39 c1                	cmp    %eax,%ecx
    10c2:	72 d0                	jb     1094 <free+0x24>
    10c4:	eb c2                	jmp    1088 <free+0x18>
    10c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10cd:	8d 76 00             	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    10d0:	03 70 04             	add    0x4(%eax),%esi
    10d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    10d6:	8b 02                	mov    (%edx),%eax
    10d8:	8b 00                	mov    (%eax),%eax
    10da:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    10dd:	8b 42 04             	mov    0x4(%edx),%eax
    10e0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    10e3:	39 f1                	cmp    %esi,%ecx
    10e5:	75 c8                	jne    10af <free+0x3f>
    p->s.size += bp->s.size;
    10e7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    10ea:	89 15 a4 19 00 00    	mov    %edx,0x19a4
    p->s.size += bp->s.size;
    10f0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    10f3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    10f6:	89 0a                	mov    %ecx,(%edx)
}
    10f8:	5b                   	pop    %ebx
    10f9:	5e                   	pop    %esi
    10fa:	5f                   	pop    %edi
    10fb:	5d                   	pop    %ebp
    10fc:	c3                   	ret
    10fd:	8d 76 00             	lea    0x0(%esi),%esi

00001100 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	57                   	push   %edi
    1104:	56                   	push   %esi
    1105:	53                   	push   %ebx
    1106:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1109:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    110c:	8b 15 a4 19 00 00    	mov    0x19a4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1112:	8d 78 07             	lea    0x7(%eax),%edi
    1115:	c1 ef 03             	shr    $0x3,%edi
    1118:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    111b:	85 d2                	test   %edx,%edx
    111d:	0f 84 8d 00 00 00    	je     11b0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1123:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1125:	8b 48 04             	mov    0x4(%eax),%ecx
    1128:	39 f9                	cmp    %edi,%ecx
    112a:	73 64                	jae    1190 <malloc+0x90>
  if(nu < 4096)
    112c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1131:	39 df                	cmp    %ebx,%edi
    1133:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    1136:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    113d:	eb 0a                	jmp    1149 <malloc+0x49>
    113f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1140:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1142:	8b 48 04             	mov    0x4(%eax),%ecx
    1145:	39 f9                	cmp    %edi,%ecx
    1147:	73 47                	jae    1190 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1149:	89 c2                	mov    %eax,%edx
    114b:	39 05 a4 19 00 00    	cmp    %eax,0x19a4
    1151:	75 ed                	jne    1140 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    1153:	83 ec 0c             	sub    $0xc,%esp
    1156:	56                   	push   %esi
    1157:	e8 8f fc ff ff       	call   deb <sbrk>
  if(p == (char*)-1)
    115c:	83 c4 10             	add    $0x10,%esp
    115f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1162:	74 1c                	je     1180 <malloc+0x80>
  hp->s.size = nu;
    1164:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    1167:	83 ec 0c             	sub    $0xc,%esp
    116a:	83 c0 08             	add    $0x8,%eax
    116d:	50                   	push   %eax
    116e:	e8 fd fe ff ff       	call   1070 <free>
  return freep;
    1173:	8b 15 a4 19 00 00    	mov    0x19a4,%edx
      if((p = morecore(nunits)) == 0)
    1179:	83 c4 10             	add    $0x10,%esp
    117c:	85 d2                	test   %edx,%edx
    117e:	75 c0                	jne    1140 <malloc+0x40>
        return 0;
  }
}
    1180:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1183:	31 c0                	xor    %eax,%eax
}
    1185:	5b                   	pop    %ebx
    1186:	5e                   	pop    %esi
    1187:	5f                   	pop    %edi
    1188:	5d                   	pop    %ebp
    1189:	c3                   	ret
    118a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1190:	39 cf                	cmp    %ecx,%edi
    1192:	74 4c                	je     11e0 <malloc+0xe0>
        p->s.size -= nunits;
    1194:	29 f9                	sub    %edi,%ecx
    1196:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1199:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    119c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    119f:	89 15 a4 19 00 00    	mov    %edx,0x19a4
}
    11a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    11a8:	83 c0 08             	add    $0x8,%eax
}
    11ab:	5b                   	pop    %ebx
    11ac:	5e                   	pop    %esi
    11ad:	5f                   	pop    %edi
    11ae:	5d                   	pop    %ebp
    11af:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    11b0:	c7 05 a4 19 00 00 a8 	movl   $0x19a8,0x19a4
    11b7:	19 00 00 
    base.s.size = 0;
    11ba:	b8 a8 19 00 00       	mov    $0x19a8,%eax
    base.s.ptr = freep = prevp = &base;
    11bf:	c7 05 a8 19 00 00 a8 	movl   $0x19a8,0x19a8
    11c6:	19 00 00 
    base.s.size = 0;
    11c9:	c7 05 ac 19 00 00 00 	movl   $0x0,0x19ac
    11d0:	00 00 00 
    if(p->s.size >= nunits){
    11d3:	e9 54 ff ff ff       	jmp    112c <malloc+0x2c>
    11d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11df:	90                   	nop
        prevp->s.ptr = p->s.ptr;
    11e0:	8b 08                	mov    (%eax),%ecx
    11e2:	89 0a                	mov    %ecx,(%edx)
    11e4:	eb b9                	jmp    119f <malloc+0x9f>
