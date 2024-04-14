.class public Lkawa/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static boolClasses:[Ljava/lang/Class;

.field public static currentLoadPath:Ljava/lang/ThreadLocal;

.field public static defaultFormatInfo:[Ljava/lang/Object;

.field public static defaultFormatMethod:Ljava/lang/reflect/Method;

.field public static defaultFormatName:Ljava/lang/String;

.field static formats:[[Ljava/lang/Object;

.field private static httpPrinterClasses:[Ljava/lang/Class;

.field private static noClasses:[Ljava/lang/Class;

.field private static portArg:Ljava/lang/Object;

.field private static xmlPrinterClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 25
    sput-object v1, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 26
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sput-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 27
    const-class v5, Lgnu/mapping/OutPort;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sput-object v4, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Class;

    .line 29
    const-class v5, Lgnu/mapping/OutPort;

    aput-object v5, v4, v0

    sput-object v4, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    const-string v4, "(port)"

    .line 31
    sput-object v4, Lkawa/Shell;->portArg:Ljava/lang/Object;

    const/16 v4, 0xe

    new-array v4, v4, [[Ljava/lang/Object;

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "scheme"

    aput-object v7, v6, v0

    const-string v7, "gnu.kawa.functions.DisplayFormat"

    aput-object v7, v6, v1

    const-string v8, "getSchemeFormat"

    aput-object v8, v6, v3

    const/4 v9, 0x3

    aput-object v2, v6, v9

    .line 41
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x4

    aput-object v2, v6, v10

    aput-object v6, v4, v0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v6, "readable-scheme"

    aput-object v6, v2, v0

    aput-object v7, v2, v1

    aput-object v8, v2, v3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v2, v9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v2, v10

    aput-object v2, v4, v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v6, "elisp"

    aput-object v6, v2, v0

    aput-object v7, v2, v1

    const-string v6, "getEmacsLispFormat"

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    aput-object v2, v4, v3

    new-array v2, v5, [Ljava/lang/Object;

    const-string v8, "readable-elisp"

    aput-object v8, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v2, v9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v2, v10

    aput-object v2, v4, v9

    new-array v2, v5, [Ljava/lang/Object;

    const-string v6, "clisp"

    aput-object v6, v2, v0

    aput-object v7, v2, v1

    const-string v6, "getCommonLispFormat"

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    aput-object v2, v4, v10

    new-array v2, v5, [Ljava/lang/Object;

    const-string v8, "readable-clisp"

    aput-object v8, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    aput-object v2, v4, v5

    new-array v2, v5, [Ljava/lang/Object;

    const-string v8, "commonlisp"

    aput-object v8, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    const/4 v8, 0x6

    aput-object v2, v4, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v11, "readable-commonlisp"

    aput-object v11, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v2, v9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v2, v10

    const/4 v6, 0x7

    aput-object v2, v4, v6

    new-array v2, v8, [Ljava/lang/Object;

    const-string v6, "xml"

    aput-object v6, v2, v0

    const-string v6, "gnu.xml.XMLPrinter"

    aput-object v6, v2, v1

    const-string v7, "make"

    aput-object v7, v2, v3

    sget-object v11, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v11, v2, v9

    sget-object v12, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v12, v2, v10

    const/4 v13, 0x0

    aput-object v13, v2, v5

    const/16 v14, 0x8

    aput-object v2, v4, v14

    new-array v2, v8, [Ljava/lang/Object;

    const-string v14, "html"

    aput-object v14, v2, v0

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    aput-object v11, v2, v9

    aput-object v12, v2, v10

    aput-object v14, v2, v5

    const/16 v14, 0x9

    aput-object v2, v4, v14

    new-array v2, v8, [Ljava/lang/Object;

    const-string v8, "xhtml"

    aput-object v8, v2, v0

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    aput-object v11, v2, v9

    aput-object v12, v2, v10

    aput-object v8, v2, v5

    const/16 v6, 0xa

    aput-object v2, v4, v6

    new-array v2, v5, [Ljava/lang/Object;

    const-string v5, "cgi"

    aput-object v5, v2, v0

    const-string v5, "gnu.kawa.xml.HttpPrinter"

    aput-object v5, v2, v1

    aput-object v7, v2, v3

    sget-object v5, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    aput-object v5, v2, v9

    aput-object v12, v2, v10

    const/16 v5, 0xb

    aput-object v2, v4, v5

    new-array v2, v10, [Ljava/lang/Object;

    const-string v5, "ignore"

    aput-object v5, v2, v0

    const-string v5, "gnu.lists.VoidConsumer"

    aput-object v5, v2, v1

    const-string v5, "getInstance"

    aput-object v5, v2, v3

    sget-object v3, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    aput-object v3, v2, v9

    const/16 v3, 0xc

    aput-object v2, v4, v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v13, v1, v0

    const/16 v0, 0xd

    aput-object v1, v4, v0

    sput-object v4, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 355
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0x50

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0x4b

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    return-object v1

    .line 365
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 366
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p0

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "load: "

    if-eq p2, p0, :cond_2

    .line 371
    :try_start_1
    invoke-static {p2}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 372
    :cond_2
    instance-of v2, p1, Lgnu/text/FilePath;

    if-eqz v2, :cond_6

    .line 374
    check-cast p1, Lgnu/text/FilePath;

    invoke-virtual {p1}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 379
    new-instance p1, Lgnu/bytecode/ZipLoader;

    invoke-direct {p1, v0}, Lgnu/bytecode/ZipLoader;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lgnu/bytecode/ZipLoader;->loadAllClasses()Ljava/lang/Class;

    move-result-object p1

    .line 381
    invoke-static {p1, p3}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p2, p0, :cond_3

    .line 390
    invoke-static {p0}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_3
    return-object p1

    .line 378
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - not readable"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - not found"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - not a file path"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 385
    :try_start_3
    new-instance p3, Lgnu/mapping/WrappedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eq p2, p0, :cond_7

    .line 390
    invoke-static {p0}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_7
    throw p1

    :catch_1
    return-object v1
.end method

.method static compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 526
    invoke-virtual {p3, p0, p4, v1, v0}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object p0

    .line 528
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 529
    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v1, v0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 530
    invoke-static {p1, p0, p2, v0}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 531
    invoke-virtual {p4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    new-instance p2, Lgnu/expr/CompiledModule;

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object p0

    invoke-direct {p2, p0, p1, p3}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    return-object p2

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;
    .locals 5

    .line 132
    sget-object v0, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    if-nez p0, :cond_0

    .line 134
    invoke-static {}, Lgnu/lists/VoidConsumer;->getInstance()Lgnu/lists/VoidConsumer;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object p0

    return-object p0

    .line 139
    :cond_1
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 140
    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 142
    aget-object v0, v3, v1

    sget-object v2, Lkawa/Shell;->portArg:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    .line 143
    aput-object p0, v3, v1

    goto :goto_0

    .line 144
    :cond_3
    sget-object v0, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v1, v0, Lgnu/lists/AbstractFormat;

    if-eqz v1, :cond_4

    .line 147
    check-cast v0, Lgnu/lists/AbstractFormat;

    iput-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    return-object p0

    .line 151
    :cond_4
    check-cast v0, Lgnu/lists/Consumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get output-format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' - caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    .locals 3

    .line 308
    instance-of v0, p0, Lgnu/mapping/WrongArguments;

    const/16 v1, 0x14

    if-eqz v0, :cond_1

    .line 310
    check-cast p0, Lgnu/mapping/WrongArguments;

    .line 311
    invoke-virtual {p1, p2, v1}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 312
    iget-object p1, p0, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "usage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-virtual {p0, p2}, Lgnu/mapping/WrongArguments;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 316
    :cond_1
    instance-of v0, p0, Ljava/lang/ClassCastException;

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p1, p2, v1}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid parameter, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 335
    :cond_2
    instance-of v0, p0, Lgnu/text/SyntaxException;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lgnu/text/SyntaxException;

    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 338
    invoke-virtual {v0, p2, v1}, Lgnu/text/SyntaxException;->printAll(Ljava/io/PrintWriter;I)V

    .line 339
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->clear()V

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {p1, p2, v1}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 344
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 218
    invoke-static/range {p0 .. p0}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v5

    move-object/from16 v6, p2

    .line 219
    invoke-virtual {v1, v6, v4}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 223
    :goto_0
    invoke-virtual {v7, v10}, Lgnu/text/Lexer;->setInteractive(Z)V

    .line 224
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    .line 228
    iget-object v0, v11, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 229
    iput-object v2, v11, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v13, v0

    goto :goto_1

    :cond_1
    move-object v13, v12

    .line 233
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 238
    instance-of v15, v14, Lgnu/bytecode/ArrayClassLoader;

    if-nez v15, :cond_2

    .line 239
    new-instance v15, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v15, v14}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v15}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_2
    const/4 v0, 0x7

    .line 252
    :try_start_1
    invoke-virtual {v1, v7, v0, v12}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v0

    if-eqz v10, :cond_3

    const/16 v14, 0x14

    .line 255
    invoke-virtual {v4, v3, v14}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v14

    goto :goto_3

    .line 256
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v14

    if-nez v14, :cond_c

    const/4 v14, 0x0

    :goto_3
    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v14, :cond_5

    goto :goto_2

    .line 264
    :cond_5
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "atInteractiveLevel$"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lgnu/expr/ModuleExp;->interactiveCounter:I

    add-int/2addr v9, v8

    sput v9, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 271
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->read()I

    move-result v9

    if-ltz v9, :cond_8

    const/16 v14, 0xd

    if-eq v9, v14, :cond_8

    const/16 v14, 0xa

    if-ne v9, v14, :cond_7

    goto :goto_4

    :cond_7
    const/16 v14, 0x20

    if-eq v9, v14, :cond_6

    const/16 v14, 0x9

    if-eq v9, v14, :cond_6

    .line 276
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->unread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    :goto_4
    move-object/from16 v14, p1

    move-object/from16 v15, p5

    .line 281
    :try_start_2
    invoke-static {v14, v11, v0, v15, v3}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    .line 283
    :cond_9
    instance-of v0, v2, Ljava/io/Writer;

    if-eqz v0, :cond_a

    .line 284
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    if-gez v9, :cond_2

    :goto_5
    if-eqz v2, :cond_b

    .line 299
    iput-object v13, v11, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_b
    invoke-static {v5}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    return-object v12

    :cond_c
    move-object/from16 v14, p1

    move-object/from16 v15, p5

    .line 257
    :try_start_3
    new-instance v0, Lgnu/text/SyntaxException;

    invoke-direct {v0, v4}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p5

    :goto_6
    if-nez v10, :cond_e

    if-eqz v2, :cond_d

    .line 299
    iput-object v13, v11, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_d
    invoke-static {v5}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    return-object v0

    .line 292
    :cond_e
    :try_start_4
    invoke-static {v0, v4, v3}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_f

    .line 299
    iput-object v13, v11, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_f
    invoke-static {v5}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    throw v1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 8

    if-eqz p3, :cond_0

    .line 190
    iget-object v0, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-static {p3}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v7, p5

    .line 194
    :try_start_0
    invoke-static/range {v1 .. v7}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 199
    iput-object v0, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_2

    iput-object v0, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_2
    throw p0
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z
    .locals 7

    .line 162
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v2

    .line 163
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .line 165
    instance-of v0, v2, Lgnu/mapping/TtyInPort;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lgnu/expr/Language;->getPrompter()Lgnu/mapping/Procedure;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    move-object v1, v2

    check-cast v1, Lgnu/mapping/TtyInPort;

    invoke-virtual {v1, v0}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 170
    :cond_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 175
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 179
    :cond_2
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object p1

    invoke-static {p0, v6, p1}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;)Z
    .locals 8

    .line 207
    new-instance v7, Lgnu/text/SourceMessages;

    invoke-direct {v7}, Lgnu/text/SourceMessages;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v7

    .line 208
    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 210
    invoke-static {p0, v7, p4}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 468
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 470
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 471
    sget-object v1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lgnu/text/Path;

    .line 474
    :try_start_0
    sget-object v1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 475
    invoke-static {p0, p1, p2, v0}, Lkawa/Shell;->checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object v8

    if-nez v8, :cond_6

    .line 478
    invoke-static {p0, p1}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object p0

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_1

    .line 480
    invoke-virtual {p0}, Lgnu/mapping/InPort;->skipRestOfLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 483
    :cond_1
    :try_start_1
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .line 484
    invoke-virtual {p1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v5

    if-eqz p3, :cond_4

    .line 487
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 488
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p1

    invoke-static {p1}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Lgnu/lists/VoidConsumer;

    invoke-direct {p1}, Lgnu/lists/VoidConsumer;-><init>()V

    :goto_1
    move-object v3, p1

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p0

    .line 490
    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 493
    :cond_3
    throw p1

    .line 497
    :cond_4
    invoke-static {p0, p2, v5, v0, v6}, Lkawa/Shell;->compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;

    move-result-object p1

    .line 498
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object p3

    const/16 p4, 0x14

    invoke-virtual {v6, p3, p4}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 505
    :try_start_2
    invoke-virtual {p0}, Lgnu/mapping/InPort;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    sget-object p0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p1

    :cond_5
    move-object v8, p1

    .line 505
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lgnu/mapping/InPort;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lgnu/mapping/InPort;->close()V

    throw p1

    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 509
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    invoke-virtual {v8, p2, p0}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 513
    :cond_7
    sget-object p0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    sget-object p1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
.end method

.method public static runFileOrClass(Ljava/lang/String;ZI)Z
    .locals 5

    .line 410
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "-"

    .line 415
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/dev/stdin"

    .line 417
    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    .line 418
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 422
    :cond_0
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    :goto_0
    :try_start_1
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    .line 428
    invoke-static {v3, v2, v4, p1, p2}, Lkawa/Shell;->runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p1

    .line 432
    :try_start_2
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    :catchall_1
    move-exception p1

    .line 441
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 450
    :try_start_4
    invoke-static {p0, v0}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object p0

    .line 451
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p1

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 p0, 0x1

    return p0

    :catchall_2
    move-exception p0

    .line 456
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    .line 445
    :catchall_3
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot read file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1
.end method

.method public static setDefaultFormat(Ljava/lang/String;)V
    .locals 7

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 94
    sput-object p0, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :goto_0
    sget-object v2, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 98
    aget-object v3, v2, v0

    const/4 v4, -0x1

    const-string v5, "\'"

    if-nez v3, :cond_0

    .line 101
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kawa: unknown output format \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    :cond_0
    if-ne v3, p0, :cond_2

    .line 106
    sput-object v2, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    const/4 v0, 0x1

    .line 109
    :try_start_0
    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    .line 110
    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    check-cast v2, [Ljava/lang/Class;

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 116
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kawa:  caught "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while looking for format \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 122
    :goto_1
    sget-object p0, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    aget-object p0, p0, v0

    const-string v1, "gnu.lists.VoidConsumer"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 123
    invoke-static {v0}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
