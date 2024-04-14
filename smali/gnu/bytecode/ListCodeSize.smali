.class public Lgnu/bytecode/ListCodeSize;
.super Ljava/lang/Object;
.source "ListCodeSize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 7

    .line 33
    array-length v0, p0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lgnu/bytecode/ListCodeSize;->usage()V

    :cond_0
    const/4 v0, 0x0

    .line 35
    aget-object v0, p0, v0

    const/4 v1, -0x1

    .line 38
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v3, Lgnu/bytecode/ClassType;

    invoke-direct {v3}, Lgnu/bytecode/ClassType;-><init>()V

    .line 41
    new-instance v4, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v4, v3, v2}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 43
    array-length v2, p0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 45
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 48
    invoke-static {p0}, Lgnu/bytecode/ListCodeSize;->print(Lgnu/bytecode/Method;)V

    .line 46
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    array-length v2, p0

    if-ge v4, v2, :cond_4

    .line 55
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    .line 58
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v2, v5}, Lgnu/bytecode/Method;->listParameters(Ljava/lang/StringBuffer;)V

    .line 61
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    invoke-static {v2}, Lgnu/bytecode/ListCodeSize;->print(Lgnu/bytecode/Method;)V

    .line 56
    :cond_2
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 75
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    .line 70
    :catch_1
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method static print(Lgnu/bytecode/Method;)V
    .locals 2

    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p0

    if-nez p0, :cond_0

    .line 21
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ": no code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(I)V

    .line 26
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " bytes"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 28
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static usage()V
    .locals 2

    .line 12
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: class methodname ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 13
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
