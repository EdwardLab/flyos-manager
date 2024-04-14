.class public Lkawa/repl;
.super Lgnu/mapping/Procedure0or1;
.source "repl.java"


# static fields
.field public static compilationTopname:Ljava/lang/String; = null

.field static defaultParseOptions:I = 0x48

.field public static homeDirectory:Ljava/lang/String;

.field public static noConsole:Z

.field static previousLanguage:Lgnu/expr/Language;

.field static shutdownRegistered:Z


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    move-result v0

    sput-boolean v0, Lkawa/repl;->shutdownRegistered:Z

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 27
    iput-object p1, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    return-void
.end method

.method static bad_option(Ljava/lang/String;)V
    .locals 3

    .line 44
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kawa: bad option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    const/4 p0, -0x1

    .line 46
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static checkInitFile()V
    .locals 4

    .line 125
    sget-object v0, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "user.home"

    .line 128
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 132
    new-instance v0, Lgnu/lists/FString;

    sget-object v1, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    const-string v1, "file.separator"

    .line 133
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".kawarc.scm"

    goto :goto_0

    :cond_0
    const-string v1, "kawarc.scm"

    .line 137
    :goto_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v2, v0

    move-object v0, v1

    .line 141
    :goto_1
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const-string v3, "home-directory"

    invoke-virtual {v1, v3, v0}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 144
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_2
    return-void
.end method

.method public static compileFiles([Ljava/lang/String;II)V
    .locals 13

    .line 718
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    sub-int v1, p2, p1

    .line 719
    new-array v2, v1, [Lgnu/expr/Compilation;

    .line 720
    new-array v1, v1, [Lgnu/expr/ModuleInfo;

    .line 721
    new-instance v3, Lgnu/text/SourceMessages;

    invoke-direct {v3}, Lgnu/text/SourceMessages;-><init>()V

    move v4, p1

    :goto_0
    const/16 v5, 0x29

    const-string v6, "(compiling "

    const/4 v7, -0x1

    if-ge v4, p2, :cond_4

    .line 724
    aget-object v8, p0, v4

    .line 725
    invoke-static {v8}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v9

    const/4 v10, 0x0

    .line 733
    :try_start_0
    invoke-static {v8}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :try_start_1
    sget v11, Lkawa/repl;->defaultParseOptions:I

    invoke-virtual {v9, v7, v3, v11}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v10

    .line 746
    sget-object v7, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 748
    invoke-static {v7}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    new-instance v9, Lgnu/bytecode/ClassType;

    invoke-direct {v9, v7}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v10}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v7

    .line 752
    invoke-virtual {v7, v9}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 753
    sget-object v11, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 754
    iput-object v9, v10, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    :cond_0
    sub-int v7, v4, p1

    .line 757
    invoke-virtual {v0, v10}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v9

    aput-object v9, v1, v7

    .line 758
    aput-object v10, v2, v7

    goto :goto_2

    :catchall_0
    move-exception v7

    goto :goto_1

    :catch_0
    move-exception v9

    .line 737
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 738
    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 763
    :goto_1
    instance-of v9, v7, Lgnu/text/SyntaxException;

    if-eqz v9, :cond_1

    move-object v9, v7

    check-cast v9, Lgnu/text/SyntaxException;

    invoke-virtual {v9}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v9

    if-eq v9, v3, :cond_2

    .line 765
    :cond_1
    invoke-static {v7, v10, v8}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    .line 767
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrorsOrWarnings()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 769
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 770
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 771
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_3
    move v0, p1

    :goto_4
    if-ge v0, p2, :cond_7

    .line 777
    aget-object v4, p0, v0

    sub-int v8, v0, p1

    .line 778
    aget-object v9, v2, v8

    .line 781
    :try_start_2
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    aget-object v10, v1, v8

    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 784
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v10

    .line 785
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v12, 0x32

    invoke-virtual {v3, v11, v12}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    if-eqz v10, :cond_5

    .line 787
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 788
    :cond_5
    aput-object v9, v2, v8

    .line 789
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v8

    .line 790
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v10, v12}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    if-eqz v8, :cond_6

    .line 792
    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v8

    .line 796
    invoke-static {v8, v9, v4}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static getLanguage()V
    .locals 1

    .line 169
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 171
    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 172
    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    :cond_0
    return-void
.end method

.method public static getLanguageFromFilenameExtension(Ljava/lang/String;)V
    .locals 1

    .line 155
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_0

    .line 157
    invoke-static {p0}, Lgnu/expr/Language;->getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p0

    sput-object p0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-eqz p0, :cond_0

    .line 160
    invoke-static {p0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    return-void

    .line 164
    :cond_0
    invoke-static {}, Lkawa/repl;->getLanguage()V

    return-void
.end method

.method static internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V
    .locals 2

    .line 803
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result p1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ": "

    .line 813
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string p1, "internal error while compiling "

    .line 816
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 818
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 819
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 p0, -0x1

    .line 820
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 827
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    .line 857
    sget-boolean p0, Lkawa/repl;->shutdownRegistered:Z

    if-nez p0, :cond_0

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_0
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    return-void

    .line 831
    :cond_1
    :try_start_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 833
    aget-object v2, p0, v0

    .line 834
    invoke-static {v2}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 835
    invoke-static {p0, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 836
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 837
    invoke-static {v2, v1, v1}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 841
    :cond_2
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 842
    invoke-static {p0, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 843
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 844
    invoke-static {}, Lkawa/repl;->shouldUseGuiConsole()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 845
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    goto :goto_0

    .line 848
    :cond_3
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object p0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, v0}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, -0x1

    .line 851
    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    :cond_4
    :goto_0
    sget-boolean p0, Lkawa/repl;->shutdownRegistered:Z

    if-nez p0, :cond_5

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_5
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    return-void

    :catchall_0
    move-exception p0

    .line 857
    sget-boolean v0, Lkawa/repl;->shutdownRegistered:Z

    if-nez v0, :cond_6

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_6
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    throw p0
.end method

.method public static printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    .line 51
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    :goto_0
    rsub-int/lit8 v2, p1, 0x1e

    if-ge v1, v2, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printOptions(Ljava/io/PrintStream;)V
    .locals 8

    const-string v0, "Usage: [java kawa.repl | kawa] [options ...]"

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    const-string v0, " Generic options:"

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "--help"

    const-string v1, "Show help about options"

    .line 66
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--author"

    const-string v1, "Show author information"

    .line 67
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--version"

    const-string v1, "Show version information"

    .line 68
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    const-string v0, " Options"

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "-e <expr>"

    const-string v1, "Evaluate expression <expr>"

    .line 71
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-c <expr>"

    const-string v1, "Same as -e, but make sure ~/.kawarc.scm is run first"

    .line 72
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-f <filename>"

    const-string v1, "File to interpret"

    .line 73
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-s| --"

    const-string v1, "Start reading commands interactively from console"

    .line 74
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-w"

    const-string v1, "Launch the interpreter in a GUI window"

    .line 75
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--server <port>"

    const-string v1, "Start a server accepting telnet connections on <port>"

    .line 76
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--debug-dump-zip"

    const-string v1, "Compiled interactive expressions to a zip archive"

    .line 77
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--debug-print-expr"

    const-string v1, "Print generated internal expressions"

    .line 78
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--debug-print-final-expr"

    const-string v1, "Print expression after any optimizations"

    .line 79
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--debug-error-prints-stack-trace"

    const-string v1, "Print stack trace with errors"

    .line 80
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--debug-warning-prints-stack-trace"

    const-string v1, "Print stack trace with warnings"

    .line 81
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--[no-]full-tailcalls"

    const-string v1, "(Don\'t) use full tail-calls"

    .line 82
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-C <filename> ..."

    const-string v1, "Compile named files to Java class files"

    .line 83
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--output-format <format>"

    const-string v1, "Use <format> when printing top-level output"

    .line 84
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--<language>"

    const-string v1, "Select source language, one of:"

    .line 85
    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lgnu/expr/Language;->getLanguages()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 87
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    const-string v3, "   "

    .line 89
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 90
    aget-object v3, v0, v2

    .line 92
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const-string v3, "[default]"

    .line 96
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, " Compilation options, must be specified before -C"

    .line 99
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "-d <dirname>"

    const-string v2, "Directory to place .class files in"

    .line 100
    invoke-static {p0, v0, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-P <prefix>"

    const-string v2, "Prefix to prepand to class names"

    .line 101
    invoke-static {p0, v0, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-T <topname>"

    const-string v2, "name to give to top-level class"

    .line 102
    invoke-static {p0, v0, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--main"

    const-string v2, "Generate an application, with a main method"

    .line 104
    invoke-static {p0, v0, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--applet"

    const-string v2, "Generate an applet"

    .line 105
    invoke-static {p0, v0, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--servlet"

    const-string v2, "Generate a servlet"

    .line 106
    invoke-static {p0, v0, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--module-static"

    const-string v2, "Top-level definitions are by default static"

    .line 107
    invoke-static {p0, v0, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v0}, Lgnu/text/Options;->keys()Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v4, v2}, Lgnu/text/Options;->getDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    const-string v0, "For more information go to:  http://www.gnu.org/software/kawa/"

    .line 117
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static processArgs([Ljava/lang/String;II)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    move/from16 v3, p1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v3, v1, :cond_62

    .line 184
    aget-object v6, v0, v3

    const-string v7, "-c"

    .line 185
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5e

    const-string v8, "-e"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_1b

    :cond_0
    const-string v7, "-f"

    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1

    .line 211
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 212
    :cond_1
    aget-object v4, v0, v3

    .line 213
    invoke-static {v4}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    .line 214
    invoke-static {v0, v6}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 215
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 216
    invoke-static {v4, v9, v2}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_61

    .line 217
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1c

    :cond_2
    const-string v7, "--script"

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v4, 0x8

    .line 222
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v3, v9

    .line 225
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 229
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move v3, v1

    :cond_3
    :goto_1
    if-ne v3, v1, :cond_4

    .line 237
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 238
    :cond_4
    aget-object v1, v0, v3

    .line 239
    invoke-static {v1}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    add-int/2addr v3, v9

    .line 240
    invoke-static {v0, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 241
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 242
    invoke-static {v1, v9, v2}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_5
    return v5

    :cond_6
    const-string v7, "\\"

    .line 246
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    add-int/2addr v3, v9

    if-ne v3, v1, :cond_7

    .line 250
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 251
    :cond_7
    aget-object v1, v0, v3

    .line 253
    new-instance v4, Lgnu/text/SourceMessages;

    invoke-direct {v4}, Lgnu/text/SourceMessages;-><init>()V

    .line 256
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 257
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v10, 0x23

    if-ne v7, v10, :cond_14

    .line 260
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v11, 0x64

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 261
    new-instance v11, Ljava/util/Vector;

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Ljava/util/Vector;-><init>(I)V

    :goto_2
    const/16 v13, 0xd

    if-eq v7, v12, :cond_8

    if-eq v7, v13, :cond_8

    if-ltz v7, :cond_8

    .line 264
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    .line 267
    :goto_3
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v14

    const/16 v15, 0x27

    if-gez v14, :cond_9

    .line 270
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected end-of-file processing argument line for: \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_9
    const/16 v2, 0x5c

    if-nez v7, :cond_11

    if-eq v14, v2, :cond_f

    if-eq v14, v15, :cond_f

    const/16 v2, 0x22

    if-ne v14, v2, :cond_a

    goto :goto_5

    :cond_a
    if-eq v14, v12, :cond_d

    if-ne v14, v13, :cond_b

    goto :goto_4

    :cond_b
    const/16 v2, 0x20

    if-eq v14, v2, :cond_c

    const/16 v2, 0x9

    if-ne v14, v2, :cond_13

    .line 284
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 286
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 287
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_6

    .line 301
    :cond_d
    :goto_4
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 302
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 303
    :cond_e
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 306
    new-array v7, v2, [Ljava/lang/String;

    .line 307
    invoke-virtual {v11, v7}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const/4 v8, 0x0

    .line 308
    invoke-static {v7, v8, v2}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v7

    if-ltz v7, :cond_14

    if-ge v7, v2, :cond_14

    .line 311
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v7

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unused meta args"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    :goto_5
    move v7, v14

    :cond_10
    :goto_6
    const/4 v2, 0x0

    :goto_7
    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_11
    if-ne v7, v2, :cond_12

    const/4 v7, 0x0

    goto :goto_8

    :cond_12
    if-ne v14, v7, :cond_13

    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_7

    :cond_13
    :goto_8
    int-to-char v2, v14

    .line 299
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 315
    :cond_14
    :goto_9
    invoke-static {v1}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 316
    invoke-static {v6, v1}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v12

    const/4 v1, 0x1

    add-int/2addr v3, v1

    .line 318
    invoke-static {v0, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 319
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 320
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 321
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v10

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v11

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v4

    invoke-static/range {v10 .. v15}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v1

    const/16 v2, 0x14

    .line 325
    invoke-virtual {v4, v0, v2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    if-eqz v1, :cond_16

    .line 328
    instance-of v0, v1, Lgnu/text/SyntaxException;

    if-eqz v0, :cond_15

    .line 330
    move-object v0, v1

    check-cast v0, Lgnu/text/SyntaxException;

    .line 331
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    if-ne v0, v4, :cond_15

    const/4 v2, 0x1

    .line 332
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 334
    :cond_15
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 339
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    const/4 v1, 0x1

    .line 340
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_16
    return v5

    :cond_17
    const-string v2, "-s"

    .line 344
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "--"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_1a

    :cond_18
    const-string v2, "-w"

    .line 353
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit8 v3, v3, 0x1

    .line 356
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 357
    invoke-static {v0, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 358
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 359
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_19
    const-string v2, "-d"

    .line 362
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1a

    .line 366
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 367
    :cond_1a
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v2

    .line 368
    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Lgnu/expr/ModuleManager;->setCompilationDirectory(Ljava/lang/String;)V

    :cond_1b
    :goto_b
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_1c
    const-string v2, "--target"

    .line 370
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "target"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_17

    :cond_1d
    const-string v2, "-P"

    .line 393
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1e

    .line 397
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 398
    :cond_1e
    aget-object v2, v0, v3

    sput-object v2, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    goto :goto_b

    :cond_1f
    const-string v2, "-T"

    .line 400
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_20

    .line 404
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 405
    :cond_20
    aget-object v2, v0, v3

    sput-object v2, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    goto :goto_b

    :cond_21
    const-string v2, "-C"

    .line 407
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    add-int/2addr v3, v2

    if-ne v3, v1, :cond_22

    .line 411
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 412
    :cond_22
    invoke-static {v0, v3, v1}, Lkawa/repl;->compileFiles([Ljava/lang/String;II)V

    return v5

    :cond_23
    const-string v2, "--output-format"

    .line 415
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "--format"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_16

    :cond_24
    const-string v2, "--connect"

    .line 422
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x0

    const-string v8, "-"

    if-eqz v2, :cond_27

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_25

    .line 426
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 428
    :cond_25
    aget-object v2, v0, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v5, 0x0

    goto :goto_c

    .line 434
    :cond_26
    :try_start_2
    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :catch_0
    const-string v2, "--connect port#"

    .line 438
    invoke-static {v2}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 444
    :goto_c
    :try_start_3
    new-instance v2, Ljava/net/Socket;

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v2, v6, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 445
    new-instance v5, Lkawa/Telnet;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 446
    invoke-virtual {v5}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v2

    .line 447
    invoke-virtual {v5}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v5

    .line 448
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 449
    invoke-static {v2}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 450
    invoke-static {v7}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 451
    invoke-static {v7}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception v0

    .line 455
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 456
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    const-string v2, "--server"

    .line 459
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 461
    invoke-static {}, Lkawa/repl;->getLanguage()V

    const/4 v2, 0x1

    add-int/2addr v3, v2

    if-ne v3, v1, :cond_28

    .line 464
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 466
    :cond_28
    aget-object v1, v0, v3

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v2, 0x0

    goto :goto_d

    .line 472
    :cond_29
    :try_start_4
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    :catch_2
    const-string v0, "--server port#"

    .line 476
    invoke-static {v0}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 482
    :goto_d
    :try_start_5
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, v2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 484
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 485
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listening on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    :goto_e
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "waiting ... "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 489
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 490
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got connection from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-static {v2, v1}, Lkawa/TelnetRepl;->serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    .line 498
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    const-string v2, "--http-auto-handler"

    .line 501
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "kawa: HttpServer classes not found"

    if-eqz v2, :cond_2c

    add-int/lit8 v3, v3, 0x2

    if-lt v3, v1, :cond_2b

    .line 505
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 521
    :cond_2b
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_b

    :cond_2c
    const-string v2, "--http-start"

    .line 525
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_2d

    const-string v2, "missing httpd port argument"

    .line 529
    invoke-static {v2}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 556
    :cond_2d
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_b

    :cond_2e
    const-string v2, "--main"

    .line 560
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    .line 562
    sput-boolean v2, Lgnu/expr/Compilation;->generateMainDefault:Z

    goto/16 :goto_b

    :cond_2f
    const-string v2, "--applet"

    .line 564
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 566
    sget v2, Lkawa/repl;->defaultParseOptions:I

    or-int/lit8 v2, v2, 0x10

    sput v2, Lkawa/repl;->defaultParseOptions:I

    goto/16 :goto_b

    :cond_30
    const-string v2, "--servlet"

    .line 568
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x2

    if-eqz v2, :cond_31

    .line 570
    sget v2, Lkawa/repl;->defaultParseOptions:I

    const/16 v5, 0x20

    or-int/2addr v2, v5

    sput v2, Lkawa/repl;->defaultParseOptions:I

    .line 571
    sput v8, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    goto/16 :goto_b

    :cond_31
    const-string v2, "--debug-dump-zip"

    .line 573
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "kawa-zip-dump-"

    .line 575
    sput-object v2, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    goto/16 :goto_b

    :cond_32
    const-string v2, "--debug-print-expr"

    .line 577
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    .line 579
    sput-boolean v2, Lgnu/expr/Compilation;->debugPrintExpr:Z

    goto/16 :goto_b

    :cond_33
    const/4 v2, 0x1

    const-string v9, "--debug-print-final-expr"

    .line 581
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 583
    sput-boolean v2, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    goto/16 :goto_b

    :cond_34
    const-string v9, "--debug-error-prints-stack-trace"

    .line 585
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 587
    sput-boolean v2, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    goto/16 :goto_b

    :cond_35
    const-string v9, "--debug-warning-prints-stack-trace"

    .line 589
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 591
    sput-boolean v2, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    goto/16 :goto_b

    :cond_36
    const-string v2, "--module-nonstatic"

    .line 593
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "--no-module-static"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto/16 :goto_15

    :cond_37
    const-string v2, "--module-static"

    .line 598
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    .line 600
    sput v2, Lgnu/expr/Compilation;->moduleStatic:I

    goto/16 :goto_b

    :cond_38
    const-string v2, "--module-static-run"

    .line 602
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 604
    sput v8, Lgnu/expr/Compilation;->moduleStatic:I

    goto/16 :goto_b

    :cond_39
    const-string v2, "--no-inline"

    .line 606
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "--inline=none"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto/16 :goto_14

    :cond_3a
    const-string v2, "--no-console"

    .line 611
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    .line 612
    sput-boolean v2, Lkawa/repl;->noConsole:Z

    goto/16 :goto_b

    :cond_3b
    const/4 v2, 0x1

    const-string v9, "--inline"

    .line 613
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 615
    sput-boolean v2, Lgnu/expr/Compilation;->inlineOk:Z

    goto/16 :goto_b

    :cond_3c
    const-string v2, "--cps"

    .line 617
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x4

    .line 619
    sput v2, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto/16 :goto_b

    :cond_3d
    const-string v2, "--full-tailcalls"

    .line 622
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x3

    if-eqz v2, :cond_3e

    .line 624
    sput v9, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto/16 :goto_b

    :cond_3e
    const-string v2, "--no-full-tailcalls"

    .line 627
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    .line 629
    sput v2, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto/16 :goto_b

    :cond_3f
    const/4 v2, 0x1

    const-string v10, "--pedantic"

    .line 632
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 634
    sput-boolean v2, Lgnu/expr/Language;->requirePedantic:Z

    goto/16 :goto_b

    :cond_40
    const-string v2, "--help"

    .line 636
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 638
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    const/4 v2, 0x0

    .line 639
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1d

    :cond_41
    const/4 v2, 0x0

    const-string v10, "--author"

    .line 641
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    .line 643
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Per Bothner <per@bothner.com>"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 644
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1d

    :cond_42
    const-string v2, "--version"

    .line 646
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 648
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Kawa "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 649
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 650
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 651
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Copyright (C) 2009 Per Bothner"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 654
    :cond_43
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4d

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_4d

    .line 657
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v8, :cond_45

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_45

    const/4 v2, 0x1

    .line 658
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_44

    goto :goto_f

    :cond_44
    const/4 v8, 0x1

    :goto_f
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_45
    move-object v2, v6

    .line 659
    :goto_10
    invoke-static {v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v8

    if-eqz v8, :cond_47

    .line 662
    sget-object v2, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v2, :cond_46

    .line 663
    invoke-static {v8}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    goto :goto_11

    .line 665
    :cond_46
    invoke-static {v8}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    .line 666
    :goto_11
    sput-object v8, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    goto/16 :goto_b

    :cond_47
    const-string v8, "="

    .line 671
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_48

    goto :goto_12

    :cond_48
    add-int/lit8 v7, v8, 0x1

    .line 677
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 678
    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_12
    const-string v8, "no-"

    .line 682
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_49

    const/4 v8, 0x1

    goto :goto_13

    :cond_49
    const/4 v8, 0x0

    :goto_13
    if-nez v7, :cond_4a

    if-eqz v8, :cond_4a

    .line 687
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "no"

    .line 690
    :cond_4a
    sget-object v9, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v9, v2, v7}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    const-string v9, "unknown option name"

    if-eqz v8, :cond_4b

    if-ne v2, v9, :cond_4b

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "both \'--no-\' prefix and \'="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' specified"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4b
    if-ne v2, v9, :cond_4c

    .line 699
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 703
    :cond_4c
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kawa: bad option \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_b

    .line 710
    :cond_4d
    invoke-static {v6}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_1e

    :cond_4e
    :goto_14
    const/4 v2, 0x0

    .line 609
    sput-boolean v2, Lgnu/expr/Compilation;->inlineOk:Z

    goto/16 :goto_1d

    :cond_4f
    :goto_15
    const/4 v2, 0x0

    .line 596
    sput v5, Lgnu/expr/Compilation;->moduleStatic:I

    goto/16 :goto_1d

    :cond_50
    :goto_16
    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_51

    .line 419
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 420
    :cond_51
    aget-object v5, v0, v3

    invoke-static {v5}, Lkawa/Shell;->setDefaultFormat(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_52
    :goto_17
    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_53

    .line 374
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 375
    :cond_53
    aget-object v5, v0, v3

    const-string v6, "7"

    .line 376
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/high16 v6, 0x330000

    .line 377
    sput v6, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    :cond_54
    const-string v6, "6"

    .line 378
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    const-string v6, "1.6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    goto :goto_19

    :cond_55
    const-string v6, "5"

    .line 380
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string v6, "1.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    goto :goto_18

    :cond_56
    const-string v6, "1.4"

    .line 382
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/high16 v5, 0x300000

    .line 383
    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1d

    :cond_57
    const-string v6, "1.3"

    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    const/high16 v5, 0x2f0000

    .line 385
    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1d

    :cond_58
    const-string v6, "1.2"

    .line 386
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    const/high16 v5, 0x2e0000

    .line 387
    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1d

    :cond_59
    const-string v6, "1.1"

    .line 388
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const v5, 0x2d0003

    .line 389
    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto :goto_1d

    .line 391
    :cond_5a
    invoke-static {v5}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    goto :goto_1d

    :cond_5b
    :goto_18
    const/high16 v5, 0x310000    # 4.49994E-39f

    .line 381
    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto :goto_1d

    :cond_5c
    :goto_19
    const/high16 v5, 0x320000

    .line 379
    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto :goto_1d

    :cond_5d
    :goto_1a
    const/4 v1, 0x1

    add-int/2addr v3, v1

    .line 347
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 348
    invoke-static {v0, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 349
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 350
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    return v5

    :cond_5e
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_5f

    .line 189
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 190
    :cond_5f
    invoke-static {}, Lkawa/repl;->getLanguage()V

    add-int/lit8 v4, v3, 0x1

    .line 191
    invoke-static {v0, v4}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 193
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 194
    :cond_60
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    .line 195
    new-instance v4, Lgnu/text/SourceMessages;

    invoke-direct {v4}, Lgnu/text/SourceMessages;-><init>()V

    .line 196
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v7

    new-instance v8, Lgnu/mapping/CharArrayInPort;

    aget-object v9, v0, v3

    invoke-direct {v8, v9}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v9

    const/4 v10, 0x0

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_61

    .line 202
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 203
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_61
    :goto_1c
    const/4 v4, 0x1

    :goto_1d
    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_62
    :goto_1e
    if-eqz v4, :cond_63

    const/4 v3, -0x1

    :cond_63
    return v3
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .locals 0

    .line 150
    invoke-static {p0, p1}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    return-void
.end method

.method public static shouldUseGuiConsole()Z
    .locals 5

    .line 870
    sget-boolean v0, Lkawa/repl;->noConsole:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "java.lang.System"

    .line 874
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "console"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    return v1

    :catchall_0
    :cond_1
    return v0
.end method

.method private static startGuiConsole()V
    .locals 4

    :try_start_0
    const-string v0, "kawa.GuiConsole"

    .line 891
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 895
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create Kawa window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 896
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .line 32
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 33
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    check-cast p1, Lgnu/mapping/Environment;

    invoke-static {v0, p1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 39
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method
