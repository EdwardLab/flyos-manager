.class public Lgnu/expr/PairClassType;
.super Lgnu/bytecode/ClassType;
.source "PairClassType.java"


# instance fields
.field public instanceType:Lgnu/bytecode/ClassType;

.field staticLink:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lgnu/bytecode/ClassType;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lgnu/expr/PairClassType;->setExisting(Z)V

    .line 39
    iput-object p1, p0, Lgnu/expr/PairClassType;->reflectClass:Ljava/lang/Class;

    .line 40
    invoke-static {p1, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 41
    invoke-static {p2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public static extractStaticLink(Lgnu/bytecode/ClassType;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p0, Lgnu/expr/PairClassType;

    iget-object p0, p0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    return-object p0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;)Lgnu/expr/PairClassType;
    .locals 1

    .line 47
    new-instance v0, Lgnu/expr/PairClassType;

    invoke-direct {v0, p0, p1}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lgnu/expr/PairClassType;
    .locals 1

    .line 54
    new-instance v0, Lgnu/expr/PairClassType;

    invoke-direct {v0, p0, p1}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    iput-object p2, v0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getStaticLink()Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    return-object v0
.end method
