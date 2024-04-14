.class public Lgnu/expr/ApplicationMainSupport;
.super Ljava/lang/Object;
.source "ApplicationMainSupport.java"


# static fields
.field public static commandLineArgArray:[Ljava/lang/String;

.field public static commandLineArguments:Lgnu/lists/FVector;

.field public static processCommandLinePropertyAssignments:Z

.field static propertyFields:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "out:doctype-system"

    const-string v2, "gnu.xml.XMLPrinter"

    const-string v3, "doctypeSystem"

    .line 109
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "out:doctype-public"

    const-string v3, "doctypePublic"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "out:base"

    const-string v3, "gnu.kawa.functions.DisplayFormat"

    const-string v4, "outBase"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "out:radix"

    const-string v4, "outRadix"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "out:line-length"

    const-string v3, "gnu.text.PrettyWriter"

    const-string v4, "lineLengthLoc"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "out:right-margin"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "out:miser-width"

    const-string v4, "miserWidthLoc"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "out:xml-indent"

    const-string v3, "indentLoc"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "display:toolkit"

    const-string v2, "gnu.kawa.models.Display"

    const-string v3, "myDisplay"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lgnu/expr/ApplicationMainSupport;->propertyFields:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processArgs([Ljava/lang/String;)V
    .locals 2

    .line 35
    sget-boolean v0, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-object v0, p0, v1

    invoke-static {v0}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p0, v1}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    return-void
.end method

.method public static processSetProperties()V
    .locals 3

    .line 18
    sget-object v0, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 27
    invoke-static {v0, v1}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static processSetProperty(Ljava/lang/String;)Z
    .locals 10

    const/16 v0, 0x3d

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 73
    :goto_0
    sget-object v4, Lgnu/expr/ApplicationMainSupport;->propertyFields:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    aget-object v6, v4, v1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    aget-object v6, v4, v3

    const/4 v7, 0x2

    .line 79
    aget-object v4, v4, v7

    .line 82
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 83
    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/ThreadLocation;

    .line 85
    invoke-virtual {v7, p0}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_1
    invoke-static {v2}, Lgnu/mapping/Symbol;->parse(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 98
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    .line 99
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0, v5, p0}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return v3

    :catchall_0
    move-exception v5

    .line 90
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error setting property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 92
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .locals 5

    .line 45
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 46
    new-array v1, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 48
    sput-object p0, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    goto :goto_1

    .line 51
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    move v3, v0

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    add-int v4, v3, p1

    .line 53
    aget-object v4, p0, v4

    aput-object v4, v2, v3

    goto :goto_0

    .line 54
    :cond_1
    sput-object v2, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 57
    new-instance v2, Lgnu/lists/FString;

    add-int v3, v0, p1

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 58
    :cond_2
    new-instance p0, Lgnu/lists/FVector;

    invoke-direct {p0, v1}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sput-object p0, Lgnu/expr/ApplicationMainSupport;->commandLineArguments:Lgnu/lists/FVector;

    .line 60
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p0

    sget-object p1, Lgnu/expr/ApplicationMainSupport;->commandLineArguments:Lgnu/lists/FVector;

    const-string v0, "command-line-arguments"

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
