.class public Lgnu/kawa/lispexpr/LangPrimType;
.super Lgnu/bytecode/PrimType;
.source "LangPrimType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final byteType:Lgnu/bytecode/PrimType;

.field public static final charType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final doubleType:Lgnu/bytecode/PrimType;

.field public static final floatType:Lgnu/bytecode/PrimType;

.field public static final intType:Lgnu/bytecode/PrimType;

.field public static final longType:Lgnu/bytecode/PrimType;

.field public static final shortType:Lgnu/bytecode/PrimType;

.field public static final voidType:Lgnu/kawa/lispexpr/LangPrimType;


# instance fields
.field implementationType:Lgnu/bytecode/PrimType;

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    .line 21
    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    .line 22
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 23
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    .line 24
    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    .line 25
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    .line 26
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 28
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 34
    iput-object p1, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 40
    iput-object p2, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    .line 41
    iput-object p1, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Lgnu/expr/Language;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 54
    iput-object p5, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    return-void
.end method


# virtual methods
.method public charValue(Ljava/lang/Object;)C
    .locals 1

    .line 81
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1

    .line 83
    :cond_0
    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1

    return p1
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/lispexpr/LangPrimType;->reflectClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_4

    const/16 v1, 0x56

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    .line 76
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 74
    :cond_3
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/Character;

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x56

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 140
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 138
    :cond_1
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 133
    :cond_2
    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_3

    return-object p1

    .line 135
    :cond_3
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    return-object p1
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 7

    .line 176
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    instance-of v2, p1, Lgnu/bytecode/PrimType;

    const/4 v3, -0x1

    const/16 v4, 0x5a

    const/4 v5, 0x1

    const/16 v6, 0x56

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-ne v0, v6, :cond_1

    return v5

    :cond_1
    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_3

    :cond_2
    return v3

    :cond_3
    if-eq v0, v6, :cond_7

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x43

    if-ne v0, v1, :cond_5

    .line 189
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnu.text.Char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 191
    :cond_5
    instance-of v0, p1, Lgnu/kawa/lispexpr/LangObjType;

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    invoke-static {p1}, Lgnu/kawa/lispexpr/LangPrimType;->swappedCompareResult(I)I

    move-result p1

    return p1

    .line 193
    :cond_6
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v5
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 106
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x43

    if-eq v0, v2, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 121
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    :cond_1
    const-string v0, "gnu.text.Char"

    .line 115
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v2, "charValue"

    .line 116
    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 117
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 118
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    :goto_0
    return-void
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .line 145
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x43

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    .line 163
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 152
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v0, v3, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 153
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 154
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v0, v1, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 155
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_0

    :cond_1
    const-string v0, "gnu.text.Char"

    .line 158
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "make"

    .line 159
    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    :goto_0
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 100
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 93
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_0

    :cond_1
    const-string v0, "gnu.text.Char"

    .line 96
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    :goto_0
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 225
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 205
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 211
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 213
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LangPrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 214
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 59
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
