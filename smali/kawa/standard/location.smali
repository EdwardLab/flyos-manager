.class public Lkawa/standard/location;
.super Lkawa/lang/Syntax;
.source "location.java"


# static fields
.field public static final location:Lkawa/standard/location;

.field private static thisType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lkawa/standard/location;

    invoke-direct {v0}, Lkawa/standard/location;-><init>()V

    sput-object v0, Lkawa/standard/location;->location:Lkawa/standard/location;

    const-string v1, "location"

    .line 18
    invoke-virtual {v0, v1}, Lkawa/standard/location;->setName(Ljava/lang/String;)V

    const-string v0, "kawa.standard.location"

    .line 32
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static makeLocationProc(Lgnu/mapping/Location;)Lgnu/mapping/Procedure;
    .locals 1

    .line 84
    new-instance v0, Lgnu/mapping/LocationProc;

    invoke-direct {v0, p0}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    return-object v0
.end method

.method public static makeProcLocation$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 4

    .line 64
    array-length v0, p1

    .line 65
    instance-of v1, p0, Lgnu/kawa/functions/ApplyToArgs;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v3, v2, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_1

    .line 69
    check-cast v2, Lgnu/mapping/Procedure;

    .line 70
    instance-of p0, v2, Lgnu/mapping/LocationProc;

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    if-ne v0, v3, :cond_0

    .line 71
    check-cast v2, Lgnu/mapping/LocationProc;

    invoke-virtual {v2}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr v0, v3

    .line 72
    new-array p0, v0, [Ljava/lang/Object;

    .line 73
    invoke-static {p1, v3, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    new-instance p1, Lgnu/mapping/ProcLocation;

    invoke-direct {p1, v2, p0}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    return-object p1

    .line 76
    :cond_1
    instance-of v1, p0, Lgnu/mapping/LocationProc;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 77
    check-cast p0, Lgnu/mapping/LocationProc;

    invoke-virtual {p0}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object p0

    return-object p0

    .line 78
    :cond_2
    new-instance v0, Lgnu/mapping/ProcLocation;

    invoke-direct {v0, p0, p1}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .line 36
    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 38
    check-cast p0, Lgnu/expr/ReferenceExp;

    .line 39
    invoke-virtual {p0, v1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 40
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 44
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 46
    invoke-virtual {p1, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    :cond_0
    return-object p0

    .line 50
    :cond_1
    instance-of v0, p0, Lgnu/expr/ApplyExp;

    if-eqz v0, :cond_2

    .line 52
    check-cast p0, Lgnu/expr/ApplyExp;

    .line 53
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    array-length p1, p1

    add-int/2addr p1, v1

    new-array v0, p1, [Lgnu/expr/Expression;

    .line 54
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 55
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p0

    sub-int/2addr p1, v1

    invoke-static {p0, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    sget-object p0, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string p1, "makeProcLocation"

    invoke-static {p0, p1, v0}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "invalid argument to location"

    .line 58
    invoke-virtual {p1, p0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2

    .line 22
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    const-string p1, "missing argument to location"

    .line 23
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    check-cast p1, Lgnu/lists/Pair;

    .line 25
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_1

    const-string p1, "extra arguments to location"

    .line 26
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-static {p1, p2}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    aput-object p1, v0, v1

    .line 29
    sget-object p1, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string p2, "makeLocationProc"

    invoke-static {p1, p2, v0}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p1

    return-object p1
.end method
