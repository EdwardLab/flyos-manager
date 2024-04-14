.class public Lgnu/kawa/reflect/CompileArrays;
.super Ljava/lang/Object;
.source "CompileArrays.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field public code:C

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;C)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .line 15
    iput-char p2, p0, Lgnu/kawa/reflect/CompileArrays;->code:C

    return-void
.end method

.method public static compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 60
    iget-object p0, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    .line 61
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    .line 62
    aget-object v0, p1, v0

    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    const/4 v0, 0x1

    .line 63
    aget-object p1, p1, v0

    sget-object v0, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 64
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 66
    invoke-virtual {p3, p2, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 94
    iget-object p0, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    .line 95
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 96
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 98
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p3, p2, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 84
    iget-object p0, p0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    .line 85
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 86
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 88
    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 72
    iget-object p0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 73
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    .line 74
    aget-object v0, p1, v0

    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    const/4 v0, 0x1

    .line 75
    aget-object v0, p1, v0

    sget-object v1, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    const/4 v0, 0x2

    .line 76
    aget-object p1, p1, v0

    invoke-virtual {p1, p2, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 77
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 78
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, p0, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    return-void
.end method

.method public static getForArrayGet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2

    .line 20
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    const/16 v1, 0x47

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArrayLength(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2

    .line 30
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    const/16 v1, 0x4c

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArrayNew(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2

    .line 35
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    const/16 v1, 0x4e

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArraySet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2

    .line 25
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    const/16 v1, 0x53

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static validateArrayGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 121
    check-cast p3, Lgnu/kawa/reflect/ArrayGet;

    iget-object p1, p3, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0
.end method

.method public static validateArrayLength(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 113
    sget-object p1, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0
.end method

.method public static validateArrayNew(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 105
    check-cast p3, Lgnu/kawa/reflect/ArrayNew;

    iget-object p1, p3, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    invoke-static {p1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0
.end method

.method public static validateArraySet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 129
    sget-object p1, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 40
    iget-char v0, p0, Lgnu/kawa/reflect/CompileArrays;->code:C

    const/16 v1, 0x47

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArrayLength;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArraySet;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArrayNew;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 46
    :cond_2
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArrayGet;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method
