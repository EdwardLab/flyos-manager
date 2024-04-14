.class public Lkawa/standard/prim_method;
.super Lkawa/lang/Syntax;
.source "prim_method.java"


# static fields
.field public static final interface_method:Lkawa/standard/prim_method;

.field public static final op1:Lkawa/standard/prim_method;

.field private static pattern3:Lkawa/lang/Pattern;

.field private static pattern4:Lkawa/lang/Pattern;

.field public static final static_method:Lkawa/standard/prim_method;

.field public static final virtual_method:Lkawa/standard/prim_method;


# instance fields
.field op_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb6

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-virtual-method"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb8

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-static-method"

    .line 14
    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb9

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-interface-method"

    .line 17
    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lkawa/standard/prim_method;

    invoke-direct {v0}, Lkawa/standard/prim_method;-><init>()V

    sput-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    const-string v1, "primitive-op1"

    .line 20
    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    .line 23
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 31
    iput p1, p0, Lkawa/standard/prim_method;->op_code:I

    return-void
.end method


# virtual methods
.method opcode()I
    .locals 1

    .line 27
    iget v0, p0, Lkawa/standard/prim_method;->op_code:I

    return v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    iget v1, p0, Lkawa/standard/prim_method;->op_code:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    invoke-virtual {v1, p1, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    sget-object v1, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong number of arguments to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(opcode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkawa/standard/prim_method;->op_code:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 46
    instance-of v4, v1, Lgnu/lists/LList;

    if-nez v4, :cond_3

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing/invalid parameter list in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 48
    :cond_3
    check-cast v1, Lgnu/lists/LList;

    .line 50
    invoke-virtual {v1}, Lgnu/lists/LList;->size()I

    move-result v4

    .line 51
    new-array v10, v4, [Lgnu/bytecode/Type;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 54
    check-cast v1, Lgnu/lists/Pair;

    .line 55
    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v6

    aput-object v6, v10, v5

    .line 56
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    :cond_4
    new-instance v1, Lgnu/lists/Pair;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v9

    .line 60
    iget v1, p0, Lkawa/standard/prim_method;->op_code:I

    if-nez v1, :cond_5

    aget-object p1, v0, v3

    .line 62
    check-cast p1, Ljava/lang/Number;

    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 63
    new-instance p2, Lgnu/expr/PrimProcedure;

    invoke-direct {p2, p1, v9, v10}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    goto :goto_5

    .line 68
    :cond_5
    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 70
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 73
    :cond_6
    :try_start_0
    check-cast p1, Lgnu/bytecode/ClassType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, p1

    goto :goto_4

    :catch_0
    move-object v5, p1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    if-nez v5, :cond_7

    const/16 p1, 0x65

    goto :goto_3

    :cond_7
    const/16 p1, 0x77

    .line 84
    invoke-virtual {v5, v2}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    .line 86
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown class: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object v7, v5

    :goto_4
    aget-object p1, v0, v3

    .line 89
    instance-of p2, p1, Lgnu/lists/Pair;

    if-eqz p2, :cond_8

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    const-string v1, "quote"

    if-ne p2, v1, :cond_8

    .line 91
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v3

    .line 92
    :cond_8
    new-instance p2, Lgnu/expr/PrimProcedure;

    iget v6, p0, Lkawa/standard/prim_method;->op_code:I

    aget-object p1, v0, v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 95
    :goto_5
    new-instance p1, Lgnu/expr/QuoteExp;

    invoke-direct {p1, p2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
