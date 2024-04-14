.class public Lgnu/kawa/reflect/SingletonType;
.super Lgnu/bytecode/ObjectType;
.source "SingletonType.java"


# static fields
.field static final instance:Lgnu/kawa/reflect/SingletonType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/kawa/reflect/SingletonType;

    const-string v1, "singleton"

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/SingletonType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 47
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 49
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_1

    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "value is not a singleton"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getInstance()Lgnu/kawa/reflect/SingletonType;
    .locals 1

    .line 18
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-object v0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-static {p1}, Lgnu/kawa/reflect/SingletonType;->coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 3

    .line 32
    invoke-static {p1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    shr-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 38
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    return p1

    .line 39
    :cond_1
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    return p1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    const/4 p1, -0x3

    return p1
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    const-string v0, "gnu.kawa.reflect.SingletonType"

    .line 61
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "coerceToSingleton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 27
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lgnu/kawa/reflect/SingletonType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    instance-of p1, p1, Lgnu/mapping/Values;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
