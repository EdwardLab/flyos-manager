.class public Lgnu/kawa/functions/NumberPredicate;
.super Lgnu/mapping/Procedure1;
.source "NumberPredicate.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final EVEN:I = 0x2

.field public static final ODD:I = 0x1


# instance fields
.field language:Lgnu/expr/Language;

.field final op:I


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p2}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    .line 38
    iput p3, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    .line 39
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompileArith:validateApplyNumberPredicate"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/NumberPredicate;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 23
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    .line 25
    iget v0, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 28
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result p1

    .line 31
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberPredicate;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5

    .line 50
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 51
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget v1, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 53
    aget-object v0, v0, v1

    .line 54
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v1

    const/4 v4, 0x4

    if-gt v1, v4, :cond_3

    .line 57
    sget-object p1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 58
    invoke-static {p1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 60
    iget v4, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-ne v4, v3, :cond_1

    .line 61
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 62
    :cond_1
    invoke-virtual {v0, p2, p1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 63
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 64
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    .line 65
    iget p1, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-ne p1, v3, :cond_2

    .line 66
    sget-object p1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 67
    :cond_2
    sget-object p1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void

    .line 71
    :cond_3
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .line 18
    iget-object v0, p0, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
