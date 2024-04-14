.class public abstract Lgnu/kawa/functions/ArithOp;
.super Lgnu/mapping/ProcedureN;
.source "ArithOp.java"


# static fields
.field static final ADD:I = 0x1

.field public static final AND:I = 0xd

.field public static final ASHIFT_GENERAL:I = 0x9

.field public static final ASHIFT_LEFT:I = 0xa

.field public static final ASHIFT_RIGHT:I = 0xb

.field public static final DIVIDE_GENERIC:I = 0x4

.field public static final DIVIDE_INEXACT:I = 0x5

.field public static final IOR:I = 0xe

.field public static final LSHIFT_RIGHT:I = 0xc

.field public static final MODULO:I = 0x8

.field static final MUL:I = 0x3

.field public static final NOT:I = 0x10

.field public static final QUOTIENT:I = 0x6

.field public static final QUOTIENT_EXACT:I = 0x7

.field static final SUB:I = 0x2

.field public static final XOR:I = 0xf


# instance fields
.field final op:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 56
    iput p2, p0, Lgnu/kawa/functions/ArithOp;->op:I

    return-void
.end method

.method public static classify(Lgnu/bytecode/Type;)I
    .locals 4

    .line 79
    instance-of v0, p0, Lgnu/bytecode/PrimType;

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x56

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x43

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x44

    if-eq p0, v0, :cond_2

    const/16 v0, 0x46

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3

    .line 89
    :cond_4
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 91
    :cond_5
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 93
    :cond_6
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x2

    return p0

    .line 95
    :cond_7
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return v3
.end method


# virtual methods
.method public defaultResult()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public isSideEffectFree()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
