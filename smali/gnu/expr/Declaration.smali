.class public Lgnu/expr/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CAN_WRITE:I = 0x8

.field public static final CLASS_ACCESS_FLAGS:J = 0x603000000L

.field public static final EARLY_INIT:I = 0x20000000

.field public static final ENUM_ACCESS:J = 0x200000000L

.field public static final EXPORT_SPECIFIED:I = 0x400

.field public static final EXTERNAL_ACCESS:I = 0x80000

.field public static final FIELD_ACCESS_FLAGS:J = 0x78f000000L

.field public static final FIELD_OR_METHOD:I = 0x100000

.field public static final FINAL_ACCESS:J = 0x400000000L

.field static final INDIRECT_BINDING:I = 0x1

.field public static final IS_ALIAS:I = 0x100

.field public static final IS_CONSTANT:I = 0x4000

.field public static final IS_DYNAMIC:I = 0x10000000

.field static final IS_FLUID:I = 0x10

.field public static final IS_IMPORTED:I = 0x20000

.field public static final IS_NAMESPACE_PREFIX:I = 0x200000

.field static final IS_SIMPLE:I = 0x40

.field public static final IS_SINGLE_VALUE:I = 0x40000

.field public static final IS_SYNTAX:I = 0x8000

.field public static final IS_UNKNOWN:I = 0x10000

.field public static final METHOD_ACCESS_FLAGS:J = 0x40f000000L

.field public static final MODULE_REFERENCE:I = 0x40000000

.field public static final NONSTATIC_SPECIFIED:I = 0x1000

.field public static final NOT_DEFINING:I = 0x200

.field public static final PACKAGE_ACCESS:I = 0x8000000

.field static final PRIVATE:I = 0x20

.field public static final PRIVATE_ACCESS:I = 0x1000000

.field public static final PRIVATE_PREFIX:Ljava/lang/String; = "$Prvt$"

.field public static final PRIVATE_SPECIFIED:I = 0x1000000

.field static final PROCEDURE:I = 0x80

.field public static final PROTECTED_ACCESS:I = 0x2000000

.field public static final PUBLIC_ACCESS:I = 0x4000000

.field public static final STATIC_SPECIFIED:I = 0x800

.field public static final TRANSIENT_ACCESS:J = 0x100000000L

.field public static final TYPE_SPECIFIED:I = 0x2000

.field static final UNKNOWN_PREFIX:Ljava/lang/String; = "loc$"

.field public static final VOLATILE_ACCESS:J = 0x80000000L

.field static counter:I


# instance fields
.field public base:Lgnu/expr/Declaration;

.field public context:Lgnu/expr/ScopeExp;

.field evalIndex:I

.field public field:Lgnu/bytecode/Field;

.field filename:Ljava/lang/String;

.field public firstCall:Lgnu/expr/ApplyExp;

.field protected flags:J

.field protected id:I

.field makeLocationMethod:Lgnu/bytecode/Method;

.field next:Lgnu/expr/Declaration;

.field nextCapturedVar:Lgnu/expr/Declaration;

.field position:I

.field symbol:Ljava/lang/Object;

.field protected type:Lgnu/bytecode/Type;

.field protected typeExp:Lgnu/expr/Expression;

.field protected value:Lgnu/expr/Expression;

.field var:Lgnu/bytecode/Variable;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    const-wide/16 v0, 0x40

    .line 528
    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .locals 2

    .line 742
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 743
    iput-object p1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    const-wide/16 v0, 0x40

    .line 528
    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 748
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V
    .locals 1

    .line 759
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 760
    iput-object p2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    const/4 p1, 0x0

    .line 761
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setSimple(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 2

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    const-wide/16 v0, 0x40

    .line 528
    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 753
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 754
    invoke-virtual {p0, p2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;
    .locals 2

    :goto_0
    if-eqz p0, :cond_2

    .line 943
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 946
    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-nez v1, :cond_0

    goto :goto_1

    .line 948
    :cond_0
    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 949
    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;
    .locals 1

    .line 1097
    invoke-interface {p0}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/expr/Declaration;->getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object p0

    return-object p0
.end method

.method public static getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1130
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1133
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 1134
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1141
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    .line 1144
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1145
    new-instance p1, Lgnu/expr/QuoteExp;

    invoke-direct {p1, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    and-int/lit8 p0, v2, 0x10

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x4000

    .line 1147
    invoke-virtual {v0, p0, p1}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_1
    return-object v0
.end method

.method public static getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 1

    .line 1061
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    .line 1062
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p0

    .line 1063
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    const-wide/16 p0, 0x4800

    .line 1064
    invoke-virtual {v0, p0, p1}, Lgnu/expr/Declaration;->setFlag(J)V

    return-object v0
.end method

.method public static getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 2

    .line 1077
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1078
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 1079
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1081
    new-instance v1, Lgnu/expr/Declaration;

    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1085
    new-instance p0, Lgnu/expr/QuoteExp;

    invoke-direct {p0, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/16 p0, 0x4800

    .line 1086
    invoke-virtual {v1, p0, p1}, Lgnu/expr/Declaration;->setFlag(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1091
    new-instance p1, Lgnu/mapping/WrappedException;

    invoke-direct {p1, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final isUnknown(Lgnu/expr/Declaration;)Z
    .locals 2

    if-eqz p0, :cond_1

    const-wide/32 v0, 0x10000

    .line 711
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;
    .locals 3

    .line 788
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-nez v0, :cond_5

    .line 791
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 793
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_3

    .line 795
    invoke-static {p0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 796
    :cond_2
    iget-object v1, p1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    :goto_1
    iput-object v1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    goto :goto_3

    .line 800
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 802
    :goto_2
    iget-object v2, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v2}, Lgnu/expr/ScopeExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 805
    :cond_5
    :goto_3
    iget-object p1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object p1
.end method

.method public compileStore(Lgnu/expr/Compilation;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0, v1, p1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 346
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 347
    iget-object p1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    :goto_0
    return-void
.end method

.method public getAccessFlags(S)S
    .locals 2

    const-wide/32 v0, 0xf000000

    .line 559
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    const-wide/32 v0, 0x1000000

    .line 562
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    int-to-short p1, p1

    :cond_0
    const-wide/32 v0, 0x2000000

    .line 564
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x4

    int-to-short p1, p1

    :cond_1
    const-wide/32 v0, 0x4000000

    .line 566
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    :cond_2
    const-wide v0, 0x80000000L

    .line 571
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 p1, p1, 0x40

    int-to-short p1, p1

    :cond_3
    const-wide v0, 0x100000000L

    .line 573
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit16 p1, p1, 0x80

    int-to-short p1, p1

    :cond_4
    const-wide v0, 0x200000000L

    .line 575
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_5

    or-int/lit16 p1, p1, 0x4000

    int-to-short p1, p1

    :cond_5
    const-wide v0, 0x400000000L

    .line 577
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/lit8 p1, p1, 0x10

    int-to-short p1, p1

    :cond_6
    return p1
.end method

.method public final getCanCall()Z
    .locals 5

    .line 632
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCanRead()Z
    .locals 5

    .line 620
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCanWrite()Z
    .locals 5

    .line 642
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 55
    iget v0, p0, Lgnu/expr/Declaration;->id:I

    return v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .line 861
    iget v0, p0, Lgnu/expr/Declaration;->position:I

    and-int/lit16 v0, v0, 0xfff

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public final getConstantValue()Ljava/lang/Object;
    .locals 2

    .line 410
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 411
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_1

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Lgnu/expr/ScopeExp;
    .locals 1

    .line 139
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlag(J)Z
    .locals 3

    .line 532
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getLineNumber()I
    .locals 1

    .line 855
    iget v0, p0, Lgnu/expr/Declaration;->position:I

    shr-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSymbol()Ljava/lang/Object;
    .locals 1

    .line 108
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 848
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .line 73
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getTypeExp()Lgnu/expr/Expression;
    .locals 1

    .line 67
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getValue()Lgnu/expr/Expression;
    .locals 3

    .line 371
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v0

    const/16 v1, 0x18

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :try_start_0
    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x2000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eq v0, v1, :cond_1

    .line 392
    :try_start_1
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 394
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    iput-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :catchall_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getVariable()Lgnu/bytecode/Variable;
    .locals 1

    .line 121
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public final hasConstantValue()Z
    .locals 2

    .line 418
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 419
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ignorable()Z
    .locals 4

    .line 667
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v2, 0x10000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 671
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 673
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 674
    instance-of v3, v0, Lgnu/expr/LambdaExp;

    if-nez v3, :cond_3

    goto :goto_0

    .line 676
    :cond_3
    check-cast v0, Lgnu/expr/LambdaExp;

    .line 677
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    :goto_0
    return v1
.end method

.method public final isAlias()Z
    .locals 5

    .line 582
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompiletimeConstant()Z
    .locals 2

    const-wide/16 v0, 0x4000

    .line 429
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFluid()Z
    .locals 5

    .line 587
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIndirectBinding()Z
    .locals 5

    .line 603
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLexical()Z
    .locals 5

    .line 706
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x10010010

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNamespaceDecl()Z
    .locals 5

    .line 597
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrivate()Z
    .locals 5

    .line 549
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isProcedureDecl()Z
    .locals 5

    .line 591
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPublic()Z
    .locals 5

    .line 547
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSimple()Z
    .locals 5

    .line 124
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .locals 4

    .line 692
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x800

    .line 694
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1000

    .line 697
    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 699
    :cond_2
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 700
    instance-of v3, v0, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_3

    check-cast v0, Lgnu/expr/ModuleExp;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public final isThisParameter()Z
    .locals 2

    .line 660
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    sget-object v1, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .line 164
    instance-of v0, p4, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/AccessExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 167
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v3, v2, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_4

    .line 169
    check-cast v2, Lgnu/expr/ReferenceExp;

    .line 170
    iget-object v3, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v3, :cond_4

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {v3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 176
    :cond_3
    invoke-virtual {v3, v2, p2, p3, p4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 180
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    iget-object v2, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/FluidLetExp;

    if-eqz v2, :cond_5

    .line 184
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 188
    :cond_5
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 190
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez v4, :cond_b

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_b

    .line 193
    iget-object p1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz p1, :cond_a

    .line 197
    iget-boolean p1, p3, Lgnu/expr/Compilation;->immediate:Z

    .line 198
    iget-object p2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {p2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result p2

    const-string v0, "make"

    if-eqz p2, :cond_7

    const-string p2, "gnu.kawa.reflect.StaticFieldLocation"

    .line 200
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    if-eqz p1, :cond_6

    const/4 v6, 0x1

    .line 201
    :cond_6
    invoke-virtual {p2, v0, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string p2, "gnu.kawa.reflect.FieldLocation"

    .line 205
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    if-eqz p1, :cond_8

    const/4 v5, 0x2

    .line 206
    :cond_8
    invoke-virtual {p2, v0, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v1, p3}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    :goto_1
    move-object v3, p2

    if-eqz p1, :cond_9

    .line 211
    invoke-virtual {p3, p0}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_2

    .line 214
    :cond_9
    iget-object p1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 217
    :goto_2
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto/16 :goto_7

    .line 194
    :cond_a
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "internal error: cannot take location of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_b
    iget-object v4, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    const/4 v7, 0x0

    if-eqz v4, :cond_d

    .line 225
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 226
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p3, v0}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 227
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_c

    .line 229
    invoke-virtual {p0, v1, p3}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 230
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto/16 :goto_4

    .line 233
    :cond_c
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_4

    .line 235
    :cond_d
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p3, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    if-nez v1, :cond_10

    .line 238
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 239
    iget-object v4, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v8, v4, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_e

    check-cast v4, Lgnu/mapping/Symbol;

    goto :goto_3

    :cond_e
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 242
    :goto_3
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 244
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 245
    :cond_f
    invoke-virtual {v1, v4, v0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 246
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_4

    .line 248
    :cond_10
    iget-boolean v0, p3, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 250
    invoke-virtual {p3, v0, p4}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    return-void

    .line 253
    :cond_11
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_12

    check-cast v0, Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_13

    .line 257
    :cond_12
    iget-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {p1, p3, p4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 262
    :cond_13
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v1, v1, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_14

    if-nez v0, :cond_14

    const-wide/16 v8, 0x80

    invoke-virtual {p0, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v1, Lgnu/expr/ClassExp;

    invoke-virtual {v1}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 268
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "get"

    invoke-static {v4, v0}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v4, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v0, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 270
    invoke-virtual {v1, p3}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 271
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_4

    :cond_14
    if-nez v0, :cond_15

    .line 276
    invoke-virtual {p0, v2}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v0

    .line 277
    :cond_15
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 280
    :goto_4
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-eqz v0, :cond_1a

    and-int/2addr p2, v6

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    .line 286
    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getFileName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_19

    const-string v1, "gnu.mapping.UnboundLocationException"

    .line 292
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 295
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v3

    .line 296
    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getColumnNumber()I

    move-result p1

    .line 297
    new-instance v4, Lgnu/bytecode/Label;

    invoke-direct {v4, v2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 298
    invoke-virtual {v4, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 299
    sget-object v6, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 300
    new-instance v6, Lgnu/bytecode/Label;

    invoke-direct {v6, v2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 301
    invoke-virtual {v6, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 302
    new-instance v8, Lgnu/bytecode/Label;

    invoke-direct {v8, v2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 303
    invoke-virtual {v8, v2}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    if-eqz v3, :cond_16

    .line 305
    invoke-virtual {v2, v8}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_5

    .line 307
    :cond_16
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    :goto_5
    if-nez v3, :cond_17

    .line 310
    invoke-virtual {v2, v8}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v7

    .line 311
    :cond_17
    invoke-virtual {v2, v4, v6, v1}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 313
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 314
    invoke-virtual {v2, p2}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 316
    invoke-virtual {v2, p1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    const-string p1, "setLine"

    .line 317
    invoke-virtual {v1, p1, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v2, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 319
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    if-eqz v3, :cond_18

    .line 321
    invoke-virtual {v8, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    goto :goto_6

    .line 323
    :cond_18
    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto :goto_6

    .line 326
    :cond_19
    sget-object p1, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 328
    :goto_6
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 331
    :cond_1a
    :goto_7
    invoke-virtual {p4, p3, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 3

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v0, v1, p2, v2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    :goto_0
    return-void
.end method

.method public makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 8

    .line 965
    invoke-virtual {p0}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v0

    const-wide/16 v1, 0x4000

    .line 967
    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    const-wide/16 v2, 0x2000

    .line 968
    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    .line 969
    iget-boolean v3, p2, Lgnu/expr/Compilation;->immediate:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v3, v3, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 971
    invoke-virtual {p0, v4}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 975
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    iget-boolean v2, p2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 977
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/32 v5, 0x10010010

    invoke-virtual {p0, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    instance-of v5, p3, Lgnu/expr/ClassExp;

    if-eqz v5, :cond_5

    move-object v5, p3

    check-cast v5, Lgnu/expr/LambdaExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    or-int/lit8 v2, v2, 0x8

    .line 986
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v5, v1, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_8

    check-cast v1, Lgnu/expr/ModuleExp;

    invoke-virtual {v1}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v5, v1, Lgnu/expr/ClassExp;

    if-nez v5, :cond_7

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_8

    :cond_7
    or-int/lit8 v2, v2, 0x10

    .line 992
    :cond_8
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 993
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v5}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 994
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 995
    :cond_9
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v5

    if-nez v5, :cond_11

    .line 997
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    const/16 v0, 0x8

    const-string v5, "$unnamed$0"

    goto :goto_2

    .line 1006
    :cond_a
    invoke-static {v5}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/32 v6, 0x10000

    .line 1007
    invoke-virtual {p0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1008
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loc$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    if-eqz v0, :cond_c

    const-wide/32 v6, 0x40000000

    .line 1009
    invoke-virtual {p0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$Prvt$"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1011
    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    const/4 v6, 0x0

    .line 1014
    :goto_3
    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 1015
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v6, v4

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1016
    :cond_d
    invoke-virtual {p1, v5, v1, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 1017
    instance-of v0, p3, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_11

    .line 1019
    move-object v0, p3

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1020
    iget-object v2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1023
    iget-object p1, p2, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {p1, v0}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object p1

    .line 1024
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_11

    .line 1025
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iget-object v1, p2, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {p1, v0, v1}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    goto :goto_4

    .line 1027
    :cond_e
    instance-of v2, v1, Lgnu/bytecode/PrimType;

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1030
    :cond_f
    instance-of p2, v0, Lgnu/text/Char;

    if-eqz p2, :cond_10

    .line 1031
    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->intValue()I

    move-result p2

    invoke-static {p2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    .line 1032
    :cond_10
    iget-object p2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {p2, v0, p1}, Lgnu/bytecode/Field;->setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V

    return-void

    .line 1038
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result p1

    if-nez p1, :cond_12

    if-eqz p3, :cond_13

    instance-of p1, p3, Lgnu/expr/ClassExp;

    if-nez p1, :cond_13

    .line 1042
    :cond_12
    invoke-static {p0, p3, p2}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    :cond_13
    return-void
.end method

.method public makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 1

    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 960
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0, p1, p2}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    return-void
.end method

.method makeIndirectLocationFor()Lgnu/mapping/Location;
    .locals 2

    .line 1049
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    check-cast v0, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 1051
    :goto_0
    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v0

    return-object v0
.end method

.method public maybeIndirectBinding(Lgnu/expr/Compilation;)V
    .locals 1

    .line 614
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object p1, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 616
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    :cond_2
    return-void
.end method

.method public final needsContext()Z
    .locals 1

    .line 493
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final needsExternalAccess()Z
    .locals 7

    .line 485
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x80020

    and-long v4, v0, v2

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    const-wide/32 v2, 0x200020

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needsInit()Z
    .locals 2

    .line 686
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final nextDecl()Lgnu/expr/Declaration;
    .locals 1

    .line 114
    iget-object v0, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public noteValue(Lgnu/expr/Expression;)V
    .locals 2

    .line 722
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_1

    .line 724
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    .line 725
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    iput-object p0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 726
    :cond_0
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-eq v0, p1, :cond_3

    .line 730
    instance-of p1, v0, Lgnu/expr/LambdaExp;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 731
    check-cast v0, Lgnu/expr/LambdaExp;

    iput-object v1, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 732
    :cond_2
    iput-object v1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    :cond_3
    :goto_0
    return-void
.end method

.method public printInfo(Lgnu/mapping/OutPort;)V
    .locals 1

    .line 869
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 870
    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->printInfo(Ljava/lang/StringBuffer;)V

    .line 871
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printInfo(Ljava/lang/StringBuffer;)V
    .locals 4

    .line 876
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v0, 0x2f

    .line 888
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 889
    iget v0, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "/fl:"

    .line 904
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(ignorable)"

    .line 907
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 909
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    const-string v2, "::"

    if-eqz v0, :cond_1

    .line 910
    instance-of v3, v0, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_1

    .line 912
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 915
    :cond_1
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_2

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v1, v0, :cond_2

    .line 917
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 920
    :cond_2
    :goto_0
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_3

    const-string v0, "(base:#"

    .line 922
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    iget v0, v0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method public pushIndirectBinding(Lgnu/expr/Compilation;)V
    .locals 5

    .line 771
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 772
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/bytecode/Type;

    const/4 v1, 0x0

    .line 776
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 777
    sget-object v2, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v2, v0, v1

    .line 778
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v3, 0x9

    const-string v4, "make"

    invoke-virtual {v1, v4, v0, v2, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 783
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public final setAlias(Z)V
    .locals 2

    const-wide/16 v0, 0x100

    .line 583
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanCall()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x4

    .line 636
    invoke-virtual {p0, v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 637
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    :cond_0
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 2

    const-wide/16 v0, 0x4

    .line 633
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanRead()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x2

    .line 627
    invoke-virtual {p0, v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 628
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    :cond_0
    return-void
.end method

.method public final setCanRead(Z)V
    .locals 2

    const-wide/16 v0, 0x2

    .line 623
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanWrite()V
    .locals 4

    .line 652
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 653
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    :cond_0
    return-void
.end method

.method public final setCanWrite(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 646
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    goto :goto_0

    .line 647
    :cond_0
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    :goto_0
    return-void
.end method

.method public setCode(I)V
    .locals 1

    if-gez p1, :cond_0

    .line 52
    iput p1, p0, Lgnu/expr/Declaration;->id:I

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "code must be negative"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-void
.end method

.method public final setFlag(J)V
    .locals 2

    .line 543
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lgnu/expr/Declaration;->flags:J

    return-void
.end method

.method public final setFlag(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 537
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    or-long p1, v0, p2

    iput-wide p1, p0, Lgnu/expr/Declaration;->flags:J

    goto :goto_0

    .line 538
    :cond_0
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    not-long p1, p2

    and-long/2addr p1, v0

    iput-wide p1, p0, Lgnu/expr/Declaration;->flags:J

    :goto_0
    return-void
.end method

.method public final setFluid(Z)V
    .locals 2

    const-wide/16 v0, 0x10

    .line 589
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setIndirectBinding(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 609
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setLine(I)V
    .locals 1

    const/4 v0, 0x0

    .line 833
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setLine(II)V

    return-void
.end method

.method public final setLine(II)V
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    shl-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    .line 828
    iput p1, p0, Lgnu/expr/Declaration;->position:I

    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1

    .line 813
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 814
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Declaration;->setLine(II)V

    return-void
.end method

.method public final setName(Ljava/lang/Object;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public final setNext(Lgnu/expr/Declaration;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setPrivate(Z)V
    .locals 2

    const-wide/16 v0, 0x20

    .line 553
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setProcedureDecl(Z)V
    .locals 2

    const-wide/16 v0, 0x80

    .line 593
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setSimple(Z)V
    .locals 2

    const-wide/16 v0, 0x40

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 129
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setSimple(Z)V

    :cond_0
    return-void
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public final setSyntax()V
    .locals 2

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    const-wide/32 v0, 0x2000c000

    .line 135
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 1

    .line 79
    iput-object p1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 80
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 81
    :cond_0
    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    return-void
.end method

.method public final setTypeExp(Lgnu/expr/Expression;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 88
    instance-of v0, p1, Lgnu/expr/TypeValue;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lgnu/expr/TypeValue;

    invoke-interface {p1}, Lgnu/expr/TypeValue;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 93
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 94
    :cond_1
    iput-object p1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 95
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    :cond_2
    return-void
.end method

.method public final setValue(Lgnu/expr/Expression;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-void
.end method

.method shouldEarlyInit()Z
    .locals 2

    const-wide/32 v0, 0x20000000

    .line 424
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Declaration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
