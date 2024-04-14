.class Lgnu/kawa/reflect/MethodFilter;
.super Ljava/lang/Object;
.source "ClassMethods.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# instance fields
.field caller:Lgnu/bytecode/ClassType;

.field modifiers:I

.field modmask:I

.field name:Ljava/lang/String;

.field nlen:I

.field receiver:Lgnu/bytecode/ObjectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    .line 309
    iput p2, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    .line 310
    iput p3, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    .line 311
    iput-object p4, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    .line 312
    iput-object p5, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 6

    .line 317
    check-cast p1, Lgnu/bytecode/Method;

    .line 318
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v1

    .line 320
    iget v2, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    and-int/2addr v2, v1

    iget v3, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_6

    iget-object v1, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 326
    iget v2, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    add-int/lit8 v5, v2, 0x2

    if-ne v1, v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x24

    if-ne v2, v5, :cond_1

    iget v2, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x56

    if-eq v2, v5, :cond_3

    const/16 v5, 0x58

    if-eq v2, v5, :cond_3

    :cond_1
    iget v2, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_2

    const-string v1, "$V$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v4

    .line 333
    :cond_3
    iget-object v0, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_4

    check-cast v0, Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 335
    :goto_0
    iget-object v1, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result p1

    invoke-virtual {v1, v0, v2, p1}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    :goto_1
    return v4
.end method
