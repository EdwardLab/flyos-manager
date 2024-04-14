.class public Lgnu/bytecode/CodeAttr;
.super Lgnu/bytecode/Attribute;
.source "CodeAttr.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;


# static fields
.field public static final DONT_USE_JSR:I = 0x2

.field static final FIXUP_CASE:I = 0x3

.field static final FIXUP_DEFINE:I = 0x1

.field static final FIXUP_DELETE3:I = 0x8

.field static final FIXUP_GOTO:I = 0x4

.field static final FIXUP_JSR:I = 0x5

.field static final FIXUP_LINE_NUMBER:I = 0xf

.field static final FIXUP_LINE_PC:I = 0xe

.field static final FIXUP_MOVE:I = 0x9

.field static final FIXUP_MOVE_TO_END:I = 0xa

.field static final FIXUP_NONE:I = 0x0

.field static final FIXUP_SWITCH:I = 0x2

.field static final FIXUP_TRANSFER:I = 0x6

.field static final FIXUP_TRANSFER2:I = 0x7

.field static final FIXUP_TRY:I = 0xb

.field static final FIXUP_TRY_END:I = 0xc

.field static final FIXUP_TRY_HANDLER:I = 0xd

.field public static final GENERATE_STACK_MAP_TABLE:I = 0x1

.field public static instructionLineMode:Z = false


# instance fields
.field PC:I

.field SP:I

.field attributes:Lgnu/bytecode/Attribute;

.field code:[B

.field currentExitableBlock:Lgnu/bytecode/ExitableBlock;

.field exception_table:[S

.field exception_table_length:I

.field exitableBlockLevel:I

.field fixup_count:I

.field fixup_labels:[Lgnu/bytecode/Label;

.field fixup_offsets:[I

.field flags:I

.field if_stack:Lgnu/bytecode/IfState;

.field lines:Lgnu/bytecode/LineNumbersAttr;

.field local_types:[Lgnu/bytecode/Type;

.field public locals:Lgnu/bytecode/LocalVarsAttr;

.field private max_locals:I

.field private max_stack:I

.field previousLabel:Lgnu/bytecode/Label;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field public stackMap:Lgnu/bytecode/StackMapTableAttr;

.field public stack_types:[Lgnu/bytecode/Type;

.field try_stack:Lgnu/bytecode/TryState;

.field private unreachable_here:Z

.field varsSetInCurrentBlock:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 1

    const-string v0, "Code"

    .line 235
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 237
    iput-object p0, p1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 238
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result p1

    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    .line 239
    iget p1, p0, Lgnu/bytecode/CodeAttr;->flags:I

    or-int/lit8 p1, p1, 0x3

    iput p1, p0, Lgnu/bytecode/CodeAttr;->flags:I

    :cond_0
    return-void
.end method

.method private adjustTypedOp(C)I
    .locals 1

    const/16 v0, 0x46

    if-eq p1, v0, :cond_4

    const/16 v0, 0x53

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x49

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x4

    return p1

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :pswitch_2
    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, 0x7

    return p1

    :cond_4
    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private adjustTypedOp(Lgnu/bytecode/Type;)I
    .locals 1

    .line 1100
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result p1

    return p1
.end method

.method public static final calculateSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 862
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 863
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 869
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x800

    if-lt v6, v7, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :cond_0
    const/16 v7, 0x80

    if-ge v6, v7, :cond_2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x2

    :goto_2
    add-int v7, v5, v6

    const v8, 0xffff

    if-le v7, v8, :cond_3

    sub-int v4, v3, v4

    int-to-char v4, v4

    .line 873
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    const/4 v5, 0x0

    :cond_3
    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v4

    int-to-char p0, v0

    .line 879
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 880
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 3

    .line 2004
    instance-of v0, p0, Lgnu/bytecode/UninitializedType;

    if-eqz v0, :cond_0

    .line 2005
    check-cast p0, Lgnu/bytecode/UninitializedType;

    invoke-virtual {p0}, Lgnu/bytecode/UninitializedType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return v0

    .line 2010
    :cond_1
    instance-of v1, p1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v2, p1

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 2014
    :cond_2
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_3

    .line 2017
    check-cast p1, Lgnu/bytecode/ArrayType;

    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 2018
    check-cast p0, Lgnu/bytecode/ArrayType;

    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private emitBinop(I)V
    .locals 3

    .line 1241
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1242
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1243
    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 1244
    instance-of v0, v2, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_0

    .line 1246
    invoke-direct {p0, p1, v2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1247
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void

    .line 1245
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "non-matching or bad types in binary operation"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private emitBinop(IC)V
    .locals 0

    .line 1252
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1253
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1254
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(IC)V

    .line 1255
    invoke-static {p2}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method private emitCheckcast(Lgnu/bytecode/Type;I)V
    .locals 2

    const/4 v0, 0x3

    .line 1990
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1991
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1992
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1993
    instance-of p2, p1, Lgnu/bytecode/ObjectType;

    if-eqz p2, :cond_0

    .line 1995
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p2

    check-cast p1, Lgnu/bytecode/ObjectType;

    invoke-virtual {p2, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    return-void

    .line 1998
    :cond_0
    new-instance p2, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unimplemented type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in emitCheckcast/emitInstanceof"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final emitFieldop(Lgnu/bytecode/Field;I)V
    .locals 1

    const/4 v0, 0x3

    .line 1413
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1414
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1415
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p2

    invoke-virtual {p2, p1}, Lgnu/bytecode/ConstantPool;->addFieldRef(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolRef;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    return-void
.end method

.method private emitShift(I)V
    .locals 4

    .line 1294
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1295
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1296
    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1298
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v2, v3, :cond_1

    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1299
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "the value shifted must be an int or a long"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1301
    :cond_1
    :goto_0
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v0, v3, :cond_2

    .line 1304
    invoke-direct {p0, p1, v2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1305
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void

    .line 1302
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string v0, "the amount of shift must be an int"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private emitTryEnd(Z)V
    .locals 2

    .line 2246
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-boolean v0, v0, Lgnu/bytecode/TryState;->tryClauseDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 2248
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/bytecode/TryState;->tryClauseDone:Z

    .line 2249
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_1

    .line 2250
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    sget-object v1, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    .line 2251
    :cond_1
    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2252
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v0

    iput-object v0, p1, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    return-void
.end method

.method private emitTypedOp(IC)V
    .locals 1

    const/4 v0, 0x1

    .line 1111
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1112
    invoke-direct {p0, p2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    return-void
.end method

.method private emitTypedOp(ILgnu/bytecode/Type;)V
    .locals 1

    const/4 v0, 0x1

    .line 1105
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1106
    invoke-direct {p0, p2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    return-void
.end method

.method private final fixupKind(I)I
    .locals 1

    .line 175
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method private final fixupOffset(I)I
    .locals 1

    .line 170
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private gotoFinallyOrEnd(Z)V
    .locals 2

    .line 2276
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2278
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2280
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v0, :cond_1

    .line 2281
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1}, Lgnu/bytecode/Label;-><init>()V

    iput-object v1, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    .line 2282
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2290
    :cond_2
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2291
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2292
    :cond_3
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    if-nez p1, :cond_6

    .line 2294
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object p1, p1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_1

    .line 2284
    :cond_4
    :goto_0
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object p1, p1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz p1, :cond_5

    .line 2285
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object p1, p1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2286
    :cond_5
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object p1, p1, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;
    .locals 0

    if-eqz p1, :cond_0

    .line 2781
    invoke-virtual {p2, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    :cond_0
    return-object p2
.end method

.method private print(Ljava/lang/String;ILjava/io/PrintWriter;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v0, 0x3b

    .line 3262
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 3264
    invoke-virtual {p3, p1, v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method private readInt(I)I
    .locals 1

    .line 3238
    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method private readUnsignedShort(I)I
    .locals 2

    .line 3233
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method private words([Lgnu/bytecode/Type;)I
    .locals 4

    .line 1460
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1461
    aget-object v2, p1, v0

    iget v2, v2, Lgnu/bytecode/Type;->size:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public addHandler(IIII)V
    .locals 4

    .line 2093
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/lit8 v0, v0, 0x4

    .line 2094
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    if-nez v1, :cond_0

    const/16 v1, 0x14

    new-array v1, v1, [S

    .line 2096
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    goto :goto_0

    .line 2098
    :cond_0
    array-length v2, v1

    if-gt v2, v0, :cond_1

    .line 2100
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [S

    const/4 v3, 0x0

    .line 2101
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2102
    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    .line 2104
    :cond_1
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v2, v0, 0x1

    int-to-short p1, p1

    aput-short p1, v1, v0

    add-int/lit8 p1, v2, 0x1

    int-to-short p2, p2

    .line 2105
    aput-short p2, v1, v2

    add-int/lit8 p2, p1, 0x1

    int-to-short p3, p3

    .line 2106
    aput-short p3, v1, p1

    int-to-short p1, p4

    .line 2107
    aput-short p1, v1, p2

    .line 2108
    iget p1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    return-void
.end method

.method public addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V
    .locals 3

    .line 2116
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2121
    :cond_0
    invoke-virtual {v0, p3}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/CpoolClass;->index:I

    :goto_0
    const/16 v2, 0xb

    .line 2122
    invoke-virtual {p0, v2, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    const/16 v2, 0xc

    .line 2123
    invoke-virtual {p0, v2, v0, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2124
    new-instance p2, Lgnu/bytecode/Label;

    invoke-direct {p2}, Lgnu/bytecode/Label;-><init>()V

    .line 2125
    iget-object p1, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iput-object p1, p2, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    const/4 p1, 0x1

    new-array p1, p1, [Lgnu/bytecode/Type;

    .line 2126
    iput-object p1, p2, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-nez p3, :cond_1

    .line 2127
    sget-object p3, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    .line 2128
    :cond_1
    iget-object p1, p2, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aput-object p3, p1, v1

    .line 2129
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    const/16 p1, 0xd

    .line 2130
    invoke-virtual {p0, p1, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    return-void
.end method

.method public addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;
    .locals 2

    .line 685
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object p1

    return-object p1
.end method

.method public addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 1

    .line 694
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object p1

    return-object p1
.end method

.method public addParamLocals()V
    .locals 5

    .line 700
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 701
    iget v1, v0, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 702
    iget-object v1, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 703
    :cond_0
    iget-object v1, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 705
    iget-object v4, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v4, v2}, Lgnu/bytecode/Variable;->setParameter(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 3

    .line 2787
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->container:Lgnu/bytecode/AttrContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v0}, Lgnu/bytecode/LocalVarsAttr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2788
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v0, p0}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2789
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->processFixups()V

    .line 2790
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v0, :cond_1

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    if-lez v0, :cond_1

    .line 2791
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    invoke-virtual {v0, p0}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2792
    :cond_1
    sget-boolean v0, Lgnu/bytecode/CodeAttr;->instructionLineMode:Z

    if-eqz v0, :cond_3

    .line 2796
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    if-nez v0, :cond_2

    .line 2797
    new-instance v0, Lgnu/bytecode/LineNumbersAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 2798
    :cond_2
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    const/4 v1, 0x0

    iput v1, v0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 2799
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2801
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    invoke-virtual {v2, v1, v1}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2803
    :cond_3
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 2804
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    return-void
.end method

.method public beginFragment(Lgnu/bytecode/Label;)I
    .locals 1

    .line 3269
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I

    move-result p1

    return p1
.end method

.method public beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I
    .locals 2

    .line 3274
    iget v0, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    const/16 v1, 0xa

    .line 3275
    invoke-virtual {p0, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 3276
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    return v0
.end method

.method public disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_32

    add-int/lit8 v6, v3, 0x1

    .line 2965
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v7, v7, v3

    and-int/lit16 v7, v7, 0xff

    .line 2966
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 2968
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    :goto_1
    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/4 v11, 0x3

    const/16 v12, 0x20

    if-gt v9, v11, :cond_0

    .line 2969
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 2970
    :cond_0
    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v8, ": "

    .line 2971
    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/16 v9, 0x6c

    const-string v13, "ilfda"

    const/16 v14, 0x78

    const/4 v15, -0x1

    const/16 v16, 0x2

    if-ge v7, v14, :cond_12

    const/16 v3, 0x57

    if-ge v7, v3, :cond_10

    if-ge v7, v11, :cond_1

    const-string v3, "nop;aconst_null;iconst_m1;"

    .line 2977
    invoke-direct {v0, v3, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_f

    :cond_1
    const/16 v3, 0x9

    if-ge v7, v3, :cond_2

    const-string v3, "iconst_"

    .line 2978
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_f

    :cond_2
    const/16 v3, 0x10

    if-ge v7, v3, :cond_5

    const/16 v3, 0xb

    if-ge v7, v3, :cond_3

    add-int/lit8 v7, v7, -0x9

    goto :goto_2

    :cond_3
    const/16 v3, 0xe

    if-ge v7, v3, :cond_4

    const/16 v9, 0x66

    add-int/lit8 v7, v7, -0xb

    goto :goto_2

    :cond_4
    const/16 v9, 0x64

    add-int/lit8 v7, v7, -0xe

    .line 2985
    :goto_2
    invoke-virtual {v1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const-string v3, "const_"

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_f

    :cond_5
    const/16 v8, 0x15

    if-ge v7, v8, :cond_9

    const/16 v8, 0x12

    if-ge v7, v8, :cond_7

    add-int/lit8 v8, v7, -0x10

    const-string v9, "bipush ;sipush ;"

    .line 2991
    invoke-direct {v0, v9, v8, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    if-ne v7, v3, :cond_6

    .line 2993
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    move v6, v7

    goto :goto_3

    .line 2994
    :cond_6
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    int-to-short v3, v3

    add-int/lit8 v6, v6, 0x2

    .line 2995
    :goto_3
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_f

    :cond_7
    if-ne v7, v8, :cond_8

    const/16 v16, 0x1

    :cond_8
    add-int/lit8 v7, v7, -0x12

    const-string v3, "ldc;ldc_w;ldc2_w;"

    .line 3000
    invoke-direct {v0, v3, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    move/from16 v3, v16

    goto/16 :goto_10

    :cond_9
    const/16 v3, 0x36

    if-ge v7, v3, :cond_a

    const-string v3, "load"

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, -0x21

    const-string v3, "store"

    :goto_4
    const/16 v8, 0x1a

    if-ge v7, v8, :cond_b

    add-int/lit8 v7, v7, -0x15

    const/4 v8, -0x1

    goto :goto_5

    :cond_b
    const/16 v8, 0x2e

    if-ge v7, v8, :cond_c

    add-int/lit8 v7, v7, -0x1a

    .line 3010
    rem-int/lit8 v8, v7, 0x4

    shr-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_c
    const/4 v8, -0x2

    add-int/lit8 v7, v7, -0x2e

    :goto_5
    const-string v9, "ilfdabcs"

    .line 3012
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const/4 v7, -0x2

    if-ne v8, v7, :cond_d

    const/16 v7, 0x61

    .line 3013
    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    .line 3014
    :cond_d
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    if-ltz v8, :cond_e

    const/16 v3, 0x5f

    .line 3015
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_f

    :cond_e
    if-ne v8, v15, :cond_2f

    if-eqz v5, :cond_f

    .line 3018
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v6, v6, 0x2

    goto :goto_6

    .line 3019
    :cond_f
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v6, 0x1

    .line 3021
    :goto_6
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3022
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_10
    const/16 v3, 0x60

    if-ge v7, v3, :cond_11

    add-int/lit8 v7, v7, -0x57

    const-string v3, "pop;pop2;dup;dup_x1;dup_x2;dup2;dup2_x1;dup2_x2;swap;"

    .line 3029
    invoke-direct {v0, v3, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_f

    :cond_11
    add-int/lit8 v7, v7, -0x60

    .line 3033
    rem-int/lit8 v3, v7, 0x4

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    shr-int/lit8 v3, v7, 0x2

    const-string v7, "add;sub;mul;div;rem;neg;"

    .line 3034
    invoke-direct {v0, v7, v3, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_f

    :cond_12
    const/16 v11, 0xaa

    if-ge v7, v11, :cond_1e

    const/16 v8, 0x84

    if-ge v7, v8, :cond_14

    and-int/lit8 v3, v7, 0x1

    if-nez v3, :cond_13

    const/16 v9, 0x69

    .line 3044
    :cond_13
    invoke-virtual {v1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int/lit8 v7, v7, -0x78

    shr-int/lit8 v3, v7, 0x1

    const-string v7, "shl;shr;ushr;and;or;xor;"

    .line 3045
    invoke-direct {v0, v7, v3, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_f

    :cond_14
    if-ne v7, v8, :cond_16

    const-string v3, "iinc"

    .line 3051
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    if-nez v5, :cond_15

    .line 3054
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 3055
    aget-byte v3, v3, v7

    goto :goto_7

    .line 3059
    :cond_15
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v6, v6, 0x2

    .line 3061
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v5

    int-to-short v5, v5

    add-int/lit8 v6, v6, 0x2

    move v8, v6

    move v6, v3

    move v3, v5

    const/4 v5, 0x0

    .line 3065
    :goto_7
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    invoke-virtual {v1, v6}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3066
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v6, v8

    goto/16 :goto_f

    :cond_16
    const/16 v8, 0x94

    if-ge v7, v8, :cond_17

    add-int/lit16 v7, v7, -0x85

    .line 3070
    div-int/lit8 v3, v7, 0x3

    const-string v8, "ilfdi"

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const/16 v3, 0x32

    .line 3071
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const-string v3, "lfdifdildilfbcs"

    .line 3072
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto/16 :goto_f

    :cond_17
    const/16 v8, 0x99

    if-ge v7, v8, :cond_18

    add-int/lit16 v7, v7, -0x94

    const-string v3, "lcmp;fcmpl;fcmpg;dcmpl;dcmpg;"

    .line 3075
    invoke-direct {v0, v3, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_f

    :cond_18
    const/16 v8, 0xa9

    if-ge v7, v8, :cond_1c

    const/16 v8, 0x9f

    if-ge v7, v8, :cond_19

    const-string v8, "if"

    .line 3080
    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit16 v7, v7, -0x99

    const-string v8, "eq;ne;lt;ge;gt;le;"

    .line 3081
    invoke-direct {v0, v8, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_9

    :cond_19
    const/16 v8, 0xa7

    if-ge v7, v8, :cond_1b

    const/16 v8, 0xa5

    if-ge v7, v8, :cond_1a

    const-string v8, "if_icmp"

    .line 3085
    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    const-string v8, "if_acmp"

    .line 3086
    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x6

    :goto_8
    add-int/lit16 v7, v7, -0x9f

    const-string v8, "eq;ne;lt;ge;gt;le;"

    .line 3087
    invoke-direct {v0, v8, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_9

    :cond_1b
    add-int/lit16 v7, v7, -0xa7

    const-string v8, "goto;jsr;"

    .line 3090
    invoke-direct {v0, v8, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3091
    :goto_9
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v7

    int-to-short v7, v7

    add-int/lit8 v6, v6, 0x2

    .line 3093
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int/2addr v3, v7

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_f

    :cond_1c
    const-string v3, "ret "

    .line 3098
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_1d

    .line 3099
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    .line 3100
    :cond_1d
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v6, 0x1

    .line 3102
    :goto_a
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_1e
    const/16 v9, 0xac

    const/4 v14, 0x4

    if-ge v7, v9, :cond_21

    .line 3109
    iget v9, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-gtz v9, :cond_1f

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, -0x4

    .line 3111
    :cond_1f
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v9

    add-int/2addr v6, v14

    if-ne v7, v11, :cond_20

    const-string v7, "tableswitch"

    .line 3114
    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3115
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v7

    add-int/lit8 v6, v6, 0x4

    .line 3116
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v11

    add-int/2addr v6, v14

    const-string v12, " low: "

    .line 3117
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v12, " high: "

    .line 3118
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v12, " default: "

    .line 3119
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/2addr v9, v3

    invoke-virtual {v1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :goto_b
    if-gt v7, v11, :cond_2f

    .line 3122
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v9

    add-int/lit8 v6, v6, 0x4

    .line 3123
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v12, "  "

    .line 3124
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3125
    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/2addr v9, v3

    invoke-virtual {v1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_20
    const-string v7, "lookupswitch"

    .line 3130
    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3131
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v7

    add-int/lit8 v6, v6, 0x4

    const-string v11, " npairs: "

    .line 3132
    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v11, " default: "

    .line 3133
    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/2addr v9, v3

    invoke-virtual {v1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :goto_c
    add-int/2addr v7, v15

    if-ltz v7, :cond_2f

    .line 3136
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v9

    add-int/lit8 v6, v6, 0x4

    .line 3137
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v11

    add-int/2addr v6, v14

    .line 3138
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v12, "  "

    .line 3139
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3140
    invoke-virtual {v1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/2addr v11, v3

    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_c

    :cond_21
    const/16 v8, 0xb2

    if-ge v7, v8, :cond_23

    const/16 v3, 0xb1

    if-ge v7, v3, :cond_22

    add-int/lit16 v7, v7, -0xac

    .line 3146
    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    :cond_22
    const-string v3, "return"

    .line 3147
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_23
    const/16 v8, 0xb6

    if-ge v7, v8, :cond_25

    add-int/lit16 v7, v7, -0xb2

    const-string v3, "getstatic;putstatic;getfield;putfield;"

    .line 3151
    invoke-direct {v0, v3, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    :cond_24
    :goto_d
    const/4 v3, 0x2

    goto/16 :goto_10

    :cond_25
    const/16 v8, 0xb9

    if-ge v7, v8, :cond_26

    const-string v3, "invoke"

    .line 3156
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit16 v7, v7, -0xb6

    const-string v3, "virtual;special;static;"

    .line 3157
    invoke-direct {v0, v3, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_d

    :cond_26
    const/16 v8, 0xb9

    if-ne v7, v8, :cond_27

    const-string v3, "invokeinterface ("

    .line 3162
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3163
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v6, v6, 0x2

    .line 3165
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v7, v7, v6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v6, v6, 0x2

    .line 3167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " args)"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    goto/16 :goto_f

    :cond_27
    const/16 v8, 0xc4

    if-ge v7, v8, :cond_2a

    add-int/lit16 v3, v7, -0xba

    const-string v8, "186;new;newarray;anewarray;arraylength;athrow;checkcast;instanceof;monitorenter;monitorexit;"

    .line 3172
    invoke-direct {v0, v8, v3, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    const/16 v3, 0xbb

    if-eq v7, v3, :cond_24

    const/16 v3, 0xbd

    if-eq v7, v3, :cond_24

    const/16 v3, 0xc0

    if-eq v7, v3, :cond_24

    const/16 v3, 0xc1

    if-ne v7, v3, :cond_28

    goto :goto_d

    :cond_28
    const/16 v3, 0xbc

    if-ne v7, v3, :cond_2f

    .line 3177
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    .line 3178
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    if-lt v3, v14, :cond_29

    const/16 v6, 0xb

    if-gt v3, v6, :cond_29

    add-int/lit8 v3, v3, -0x4

    const-string v6, "boolean;char;float;double;byte;short;int;long;"

    .line 3180
    invoke-direct {v0, v6, v3, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_e

    .line 3183
    :cond_29
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_e

    :cond_2a
    const/16 v8, 0xc4

    if-ne v7, v8, :cond_2b

    const-string v3, "wide"

    .line 3189
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_10

    :cond_2b
    const/16 v8, 0xc5

    if-ne v7, v8, :cond_2c

    const-string v3, "multianewarray"

    .line 3194
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3195
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v6, v6, 0x2

    .line 3197
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3198
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 3199
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3200
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :goto_e
    move v6, v7

    goto :goto_f

    :cond_2c
    const/16 v8, 0xc8

    if-ge v7, v8, :cond_2d

    add-int/lit16 v7, v7, -0xc6

    const-string v8, "ifnull;ifnonnull;"

    .line 3204
    invoke-direct {v0, v8, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3205
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v7

    int-to-short v7, v7

    add-int/lit8 v6, v6, 0x2

    .line 3207
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int/2addr v3, v7

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_f

    :cond_2d
    const/16 v8, 0xca

    if-ge v7, v8, :cond_2e

    add-int/lit16 v7, v7, -0xc8

    const-string v8, "goto_w;jsr_w;"

    .line 3211
    invoke-direct {v0, v8, v7, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3212
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v7

    add-int/lit8 v6, v6, 0x4

    .line 3214
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int/2addr v3, v7

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_f

    .line 3217
    :cond_2e
    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :cond_2f
    :goto_f
    const/4 v3, 0x0

    :goto_10
    if-lez v3, :cond_31

    if-ne v3, v10, :cond_30

    .line 3223
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    goto :goto_11

    .line 3224
    :cond_30
    invoke-direct {v0, v6}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v7, v6, 0x2

    .line 3225
    :goto_11
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    move v3, v7

    goto :goto_12

    :cond_31
    move v3, v6

    .line 3227
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    goto/16 :goto_0

    :cond_32
    return-void
.end method

.method public final emitAdd()V
    .locals 1

    const/16 v0, 0x60

    .line 1274
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitAdd(C)V
    .locals 1

    const/16 v0, 0x60

    .line 1271
    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitAdd(Lgnu/bytecode/PrimType;)V
    .locals 1

    const/16 v0, 0x60

    .line 1272
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitAnd()V
    .locals 1

    const/16 v0, 0x7e

    .line 1284
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitArrayLength()V
    .locals 2

    .line 1070
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1073
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v0, 0xbe

    .line 1074
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1075
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void

    .line 1071
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "non-array type in emitArrayLength"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitArrayLoad()V
    .locals 2

    .line 1161
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1162
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1163
    check-cast v0, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    const/16 v1, 0x2e

    .line 1164
    invoke-direct {p0, v1, v0}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1165
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitArrayLoad(Lgnu/bytecode/Type;)V
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1149
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/16 v0, 0x2e

    .line 1150
    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1151
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitArrayStore()V
    .locals 2

    .line 1135
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1136
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1137
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1138
    check-cast v0, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    const/16 v1, 0x4f

    .line 1139
    invoke-direct {p0, v1, v0}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public emitArrayStore(Lgnu/bytecode/Type;)V
    .locals 1

    .line 1122
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1123
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1124
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/16 v0, 0x4f

    .line 1125
    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public emitBinop(ILgnu/bytecode/Type;)V
    .locals 0

    .line 1260
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1261
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1262
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1263
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitCatchEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 2270
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2271
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public emitCatchStart(Lgnu/bytecode/Variable;)V
    .locals 3

    const/4 v0, 0x0

    .line 2257
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2258
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v1, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2259
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 2260
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2261
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    .line 2262
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v0, v1, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    .line 2263
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, v2, v0}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    if-eqz p1, :cond_2

    .line 2265
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    :cond_2
    return-void
.end method

.method public emitCheckcast(Lgnu/bytecode/Type;)V
    .locals 1

    .line 2027
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc0

    .line 2029
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2030
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    :cond_0
    return-void
.end method

.method public final emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .locals 7

    .line 1923
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 1924
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 1926
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_15

    :cond_0
    const/4 v2, 0x0

    .line 1928
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1929
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    .line 1932
    :cond_1
    iget v2, p1, Lgnu/bytecode/Type;->size:I

    const/4 v5, 0x4

    const/16 v6, 0x49

    if-ge v2, v5, :cond_2

    const/16 v1, 0x49

    .line 1934
    :cond_2
    iget v2, p2, Lgnu/bytecode/Type;->size:I

    if-ge v2, v5, :cond_3

    .line 1936
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v1}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    const/16 v1, 0x49

    :cond_3
    if-ne v1, v0, :cond_4

    return-void

    :cond_4
    const/16 p1, 0x44

    const/16 v2, 0x4a

    const/16 v5, 0x46

    if-eq v1, p1, :cond_11

    if-eq v1, v5, :cond_d

    if-eq v1, v6, :cond_9

    if-eq v1, v2, :cond_5

    goto/16 :goto_0

    :cond_5
    if-eq v0, p1, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v6, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0x88

    const/16 v4, 0x88

    goto :goto_0

    :cond_7
    const/16 p1, 0x89

    const/16 v4, 0x89

    goto :goto_0

    :cond_8
    const/16 p1, 0x8a

    const/16 v4, 0x8a

    goto :goto_0

    :cond_9
    if-eq v0, v5, :cond_c

    if-eq v0, v2, :cond_b

    const/16 p1, 0x53

    if-eq v0, p1, :cond_a

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v4, 0x87

    goto :goto_0

    :pswitch_1
    const/16 v4, 0x92

    goto :goto_0

    :pswitch_2
    const/16 v4, 0x91

    goto :goto_0

    :cond_a
    const/16 v4, 0x93

    goto :goto_0

    :cond_b
    const/16 v4, 0x85

    goto :goto_0

    :cond_c
    const/16 v4, 0x86

    goto :goto_0

    :cond_d
    if-eq v0, p1, :cond_10

    if-eq v0, v6, :cond_f

    if-eq v0, v2, :cond_e

    goto :goto_0

    :cond_e
    const/16 v4, 0x8c

    goto :goto_0

    :cond_f
    const/16 v4, 0x8b

    goto :goto_0

    :cond_10
    const/16 v4, 0x8d

    goto :goto_0

    :cond_11
    if-eq v0, v5, :cond_14

    if-eq v0, v6, :cond_13

    if-eq v0, v2, :cond_12

    goto :goto_0

    :cond_12
    const/16 v4, 0x8f

    goto :goto_0

    :cond_13
    const/16 v4, 0x8e

    goto :goto_0

    :cond_14
    const/16 v4, 0x90

    :cond_15
    :goto_0
    if-ltz v4, :cond_16

    .line 1982
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1983
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1984
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1985
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void

    .line 1981
    :cond_16
    new-instance p1, Ljava/lang/Error;

    const-string p2, "unsupported CodeAttr.emitConvert"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final emitDiv()V
    .locals 1

    const/16 v0, 0x6c

    .line 1282
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitDup()V
    .locals 3

    const/4 v0, 0x1

    .line 518
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 520
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 521
    iget v1, v0, Lgnu/bytecode/Type;->size:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const/16 v1, 0x59

    goto :goto_0

    :cond_0
    const/16 v1, 0x5c

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 522
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitDup(I)V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    return-void
.end method

.method public emitDup(II)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 555
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "dup will cause invalid types on stack"

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne p1, v0, :cond_2

    .line 559
    iget v6, v1, Lgnu/bytecode/Type;->size:I

    if-gt v6, v5, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string p2, "using dup for 2-word type"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne p1, v2, :cond_12

    .line 564
    iget v6, v1, Lgnu/bytecode/Type;->size:I

    if-gt v6, v5, :cond_4

    .line 566
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 567
    iget v7, v6, Lgnu/bytecode/Type;->size:I

    if-gt v7, v5, :cond_3

    goto :goto_1

    .line 568
    :cond_3
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    move-object v6, v4

    :goto_1
    if-nez p2, :cond_6

    if-ne p1, v0, :cond_5

    const/16 p1, 0x59

    goto :goto_2

    :cond_5
    const/16 p1, 0x5c

    :goto_2
    move-object p2, v4

    goto :goto_5

    :cond_6
    if-ne p2, v0, :cond_9

    if-ne p1, v0, :cond_7

    const/16 p1, 0x5a

    goto :goto_3

    :cond_7
    const/16 p1, 0x5d

    .line 582
    :goto_3
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object p2

    .line 583
    iget v0, p2, Lgnu/bytecode/Type;->size:I

    if-gt v0, v5, :cond_8

    goto :goto_5

    .line 584
    :cond_8
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-ne p2, v2, :cond_11

    if-ne p1, v0, :cond_a

    const/16 p1, 0x5b

    goto :goto_4

    :cond_a
    const/16 p1, 0x5e

    .line 589
    :goto_4
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object p2

    .line 590
    iget v0, p2, Lgnu/bytecode/Type;->size:I

    if-gt v0, v5, :cond_c

    .line 592
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 593
    iget v0, v4, Lgnu/bytecode/Type;->size:I

    if-gt v0, v5, :cond_b

    goto :goto_5

    .line 594
    :cond_b
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 600
    :cond_c
    :goto_5
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    if-eqz v6, :cond_d

    .line 602
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 603
    :cond_d
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    if-eqz v4, :cond_e

    .line 605
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    :cond_e
    if-eqz p2, :cond_f

    .line 607
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    :cond_f
    if-eqz v6, :cond_10

    .line 609
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 610
    :cond_10
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void

    .line 598
    :cond_11
    new-instance p1, Ljava/lang/Error;

    const-string p2, "emitDup:  invalid offset"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_12
    new-instance p1, Ljava/lang/Error;

    const-string p2, "invalid size to emitDup"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public emitDup(Lgnu/bytecode/Type;)V
    .locals 1

    .line 624
    iget p1, p1, Lgnu/bytecode/Type;->size:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    return-void
.end method

.method public emitDupX()V
    .locals 4

    const/4 v0, 0x1

    .line 529
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 531
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 532
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 534
    iget v2, v1, Lgnu/bytecode/Type;->size:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    .line 535
    iget v2, v0, Lgnu/bytecode/Type;->size:I

    if-gt v2, v3, :cond_0

    const/16 v2, 0x5a

    goto :goto_0

    :cond_0
    const/16 v2, 0x5d

    :goto_0
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    .line 537
    :cond_1
    iget v2, v0, Lgnu/bytecode/Type;->size:I

    if-gt v2, v3, :cond_2

    const/16 v2, 0x5b

    goto :goto_1

    :cond_2
    const/16 v2, 0x5e

    :goto_1
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 539
    :goto_2
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 540
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 541
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitElse()V
    .locals 7

    .line 1856
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v0, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1857
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1859
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1860
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput-object v1, v2, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1861
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    sub-int/2addr v2, v3

    .line 1862
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput v2, v3, Lgnu/bytecode/IfState;->stack_growth:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 1865
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    new-array v5, v2, [Lgnu/bytecode/Type;

    iput-object v5, v4, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    .line 1866
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v6, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v6, v6, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    invoke-static {v4, v5, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1870
    :cond_0
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    new-array v3, v3, [Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    .line 1871
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_1

    .line 1874
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1875
    :goto_1
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v2, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    if-le v1, v2, :cond_2

    .line 1876
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    goto :goto_1

    .line 1877
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v1, v1, Lgnu/bytecode/IfState;->start_stack_size:I

    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-eqz v0, :cond_3

    .line 1879
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1880
    :cond_3
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/bytecode/IfState;->doing_else:Z

    return-void
.end method

.method public final emitFi()V
    .locals 6

    .line 1887
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-boolean v0, v0, Lgnu/bytecode/IfState;->doing_else:Z

    const-string v1, "at PC "

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1889
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 1891
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " then clause grows stack with no else clause"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1893
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v0, v0, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_5

    .line 1895
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v0, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->stack_growth:I

    add-int/2addr v0, v3

    .line 1897
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1899
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v1, v1, Lgnu/bytecode/IfState;->stack_growth:I

    if-lez v1, :cond_2

    .line 1900
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v1, v1, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v4, v4, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->stack_growth:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1903
    :cond_2
    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    goto :goto_0

    .line 1905
    :cond_3
    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-ne v3, v0, :cond_4

    goto :goto_0

    .line 1906
    :cond_4
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": SP at end of \'then\' was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while SP at end of \'else\' was "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1910
    :cond_5
    iget-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 1913
    :cond_6
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v0, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    if-eqz v0, :cond_7

    .line 1914
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v0, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    :cond_7
    if-eqz v2, :cond_8

    .line 1916
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 1918
    :cond_8
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v0, v0, Lgnu/bytecode/IfState;->previous:Lgnu/bytecode/IfState;

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    return-void
.end method

.method public emitFinallyEnd()V
    .locals 6

    .line 2351
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitRet(Lgnu/bytecode/Variable;)V

    goto/16 :goto_2

    .line 2353
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-nez v0, :cond_1

    .line 2355
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    goto :goto_2

    .line 2359
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2360
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2361
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 2362
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2363
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2364
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 2366
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v0, :cond_4

    .line 2370
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_3

    .line 2374
    iget-object v3, v0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 2375
    iput-object v1, v0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 2376
    iput-object v1, v0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    .line 2377
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    iget-object v5, v0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v4, v5}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v4

    .line 2379
    iget-object v5, v0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v4, v5, :cond_2

    .line 2381
    iget v4, v0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    iget-object v0, v0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v2, v4, p0, v0}, Lgnu/bytecode/SwitchState;->addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z

    goto :goto_1

    .line 2385
    :cond_2
    iget v5, v0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    invoke-virtual {v2, v5, p0}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 2386
    invoke-virtual {v0, v4}, Lgnu/bytecode/ExitableBlock;->exit(Lgnu/bytecode/TryState;)V

    :goto_1
    move-object v0, v3

    goto :goto_0

    .line 2390
    :cond_3
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 2392
    invoke-virtual {v2, p0}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 2393
    invoke-virtual {v2, p0}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2395
    :cond_4
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 2397
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2399
    :goto_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 2400
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    return-void
.end method

.method public emitFinallyStart()V
    .locals 4

    const/4 v0, 0x1

    .line 2301
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2302
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2304
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    .line 2306
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 2307
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2309
    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v0, 0x0

    .line 2310
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2311
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2312
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2313
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2314
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    goto :goto_0

    .line 2318
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2319
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2320
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v0

    .line 2321
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    sget-object v3, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 2322
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_2

    .line 2323
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 2324
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    .line 2326
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2327
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 2329
    :cond_3
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2330
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    .line 2332
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 2334
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2336
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 2337
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v2

    iput-object v2, v1, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    .line 2338
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2339
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    :cond_4
    return-void
.end method

.method public final emitGetField(Lgnu/bytecode/Field;)V
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1433
    iget-object v0, p1, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    const/16 v0, 0xb4

    .line 1434
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    return-void
.end method

.method public final emitGetStatic(Lgnu/bytecode/Field;)V
    .locals 1

    .line 1423
    iget-object v0, p1, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    const/16 v0, 0xb2

    .line 1424
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    return-void
.end method

.method public final emitGoto(Lgnu/bytecode/Label;)V
    .locals 1

    .line 1573
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    const/4 v0, 0x4

    .line 1574
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    const/4 p1, 0x3

    .line 1575
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 p1, 0xa7

    .line 1576
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1577
    iget p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1578
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    return-void
.end method

.method public final emitGotoIfCompare1(Lgnu/bytecode/Label;I)V
    .locals 1

    .line 1615
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/4 v0, 0x3

    .line 1616
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1617
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfCompare2(Lgnu/bytecode/Label;I)V
    .locals 5

    const/16 v0, 0x99

    if-lt p2, v0, :cond_b

    const/16 v0, 0x9e

    if-gt p2, v0, :cond_b

    .line 1638
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1639
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    const/4 v3, 0x4

    .line 1640
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1641
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1642
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x9b

    if-eq p2, v4, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const/16 v0, 0x49

    if-ne v2, v0, :cond_2

    if-ne v1, v0, :cond_2

    add-int/lit8 p2, p2, 0x6

    goto :goto_2

    :cond_2
    const/16 v0, 0x4a

    if-ne v2, v0, :cond_3

    if-ne v1, v0, :cond_3

    const/16 v0, 0x94

    .line 1649
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x46

    if-ne v2, v0, :cond_5

    if-ne v1, v0, :cond_5

    if-eqz v3, :cond_4

    const/16 v0, 0x95

    goto :goto_0

    :cond_4
    const/16 v0, 0x96

    .line 1651
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x44

    if-ne v2, v0, :cond_7

    if-ne v1, v0, :cond_7

    if-eqz v3, :cond_6

    const/16 v0, 0x97

    goto :goto_1

    :cond_6
    const/16 v0, 0x98

    .line 1653
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    :cond_7
    const/16 v0, 0x5b

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_8

    if-ne v2, v0, :cond_a

    :cond_8
    if-eq v1, v3, :cond_9

    if-ne v1, v0, :cond_a

    :cond_9
    const/16 v0, 0x9a

    if-gt p2, v0, :cond_a

    add-int/lit8 p2, p2, 0xc

    .line 1661
    :goto_2
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    return-void

    .line 1659
    :cond_a
    new-instance p1, Ljava/lang/Error;

    const-string p2, "invalid types to emitGotoIfCompare2"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1636
    :cond_b
    new-instance p1, Ljava/lang/Error;

    const-string p2, "emitGotoIfCompare2: logop must be one of ifeq...ifle"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x99

    .line 1674
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/16 p2, 0x9a

    goto :goto_0

    :cond_0
    const/16 p2, 0x99

    .line 1668
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfGe(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9c

    .line 1686
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfGt(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9d

    .line 1688
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntEqZero(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x99

    .line 1621
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9c

    .line 1627
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGtZero(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9d

    .line 1629
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLeZero(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9e

    .line 1631
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9b

    .line 1625
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntNeZero(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9a

    .line 1623
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLe(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9e

    .line 1690
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLt(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9b

    .line 1684
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfNE(Lgnu/bytecode/Label;)V
    .locals 1

    const/16 v0, 0x9a

    .line 1680
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitIOr()V
    .locals 1

    const/16 v0, 0x80

    .line 1285
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitIfCompare1(I)V
    .locals 3

    .line 1698
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1699
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 1701
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1702
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1703
    iget p1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput p1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void

    .line 1700
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "non-int type to emitIfCompare1"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final emitIfEq()V
    .locals 2

    .line 1782
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1783
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    .line 1784
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitIfGe()V
    .locals 2

    .line 1800
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1801
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfLt(Lgnu/bytecode/Label;)V

    .line 1802
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitIfGt()V
    .locals 2

    .line 1809
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1810
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfLe(Lgnu/bytecode/Label;)V

    .line 1811
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitIfIntCompare(I)V
    .locals 2

    .line 1755
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1756
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1757
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/4 v1, 0x3

    .line 1758
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1759
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1760
    iget p1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput p1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitIfIntEqZero()V
    .locals 1

    const/16 v0, 0x9a

    .line 1717
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    return-void
.end method

.method public final emitIfIntLEqZero()V
    .locals 1

    const/16 v0, 0x9d

    .line 1723
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    return-void
.end method

.method public final emitIfIntLt()V
    .locals 1

    const/16 v0, 0xa2

    .line 1766
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfIntCompare(I)V

    return-void
.end method

.method public final emitIfIntNotZero()V
    .locals 1

    const/16 v0, 0x99

    .line 1710
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    return-void
.end method

.method public final emitIfLe()V
    .locals 2

    .line 1818
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1819
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfGt(Lgnu/bytecode/Label;)V

    .line 1820
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitIfLt()V
    .locals 2

    .line 1791
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1792
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfGe(Lgnu/bytecode/Label;)V

    .line 1793
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitIfNEq()V
    .locals 2

    .line 1773
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1774
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 1775
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitIfNotNull()V
    .locals 1

    const/16 v0, 0xc6

    .line 1742
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    return-void
.end method

.method public final emitIfNull()V
    .locals 1

    const/16 v0, 0xc7

    .line 1748
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    return-void
.end method

.method public final emitIfRefCompare1(I)V
    .locals 2

    .line 1731
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1732
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    instance-of v1, v1, Lgnu/bytecode/ObjectType;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 1734
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1735
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1736
    iget p1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput p1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void

    .line 1733
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "non-ref type to emitIfRefCompare1"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final emitIfThen()V
    .locals 2

    .line 1850
    new-instance v0, Lgnu/bytecode/IfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V

    return-void
.end method

.method public emitInc(Lgnu/bytecode/Variable;S)V
    .locals 3

    .line 1383
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1385
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    if-ltz v0, :cond_4

    .line 1386
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    .line 1389
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1390
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object p1

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne p1, v1, :cond_3

    const/16 p1, 0xff

    if-gt v0, p1, :cond_1

    if-gt p2, p1, :cond_1

    const/16 p1, -0x100

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v1, 0x84

    if-eqz p1, :cond_2

    const/16 p1, 0xc4

    .line 1397
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1398
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1399
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1400
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_2

    .line 1404
    :cond_2
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1405
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1406
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    :goto_2
    return-void

    .line 1391
    :cond_3
    new-instance p1, Ljava/lang/Error;

    const-string p2, "attempting to increment non-int variable"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1387
    :cond_4
    new-instance p2, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempting to increment unassigned variable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " simple:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", offset: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1384
    :cond_5
    new-instance p1, Ljava/lang/Error;

    const-string p2, "attempting to increment dead variable"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public emitInstanceof(Lgnu/bytecode/Type;)V
    .locals 1

    const/16 v0, 0xc1

    .line 2036
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2037
    sget-object p1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitInvoke(Lgnu/bytecode/Method;)V
    .locals 2

    .line 1521
    iget v0, p1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    goto :goto_0

    .line 1523
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb9

    goto :goto_0

    .line 1525
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb7

    goto :goto_0

    :cond_2
    const/16 v0, 0xb6

    .line 1529
    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    return-void
.end method

.method public emitInvokeInterface(Lgnu/bytecode/Method;)V
    .locals 1

    const/16 v0, 0xb9

    .line 1557
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    return-void
.end method

.method public emitInvokeMethod(Lgnu/bytecode/Method;I)V
    .locals 7

    const/16 v0, 0xb9

    if-ne p2, v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1470
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1471
    iget-object v1, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    const/16 v2, 0xb8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0xb7

    if-ne p2, v5, :cond_2

    .line 1473
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<init>"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1475
    :goto_2
    iget v6, p1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-ne v2, v6, :cond_12

    if-nez v2, :cond_4

    if-nez v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 1480
    :cond_4
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1481
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/bytecode/ConstantPool;->addMethodRef(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolRef;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    if-ne p2, v0, :cond_5

    .line 1484
    iget-object p2, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    invoke-direct {p0, p2}, Lgnu/bytecode/CodeAttr;->words([Lgnu/bytecode/Type;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1485
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    .line 1489
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object p2

    .line 1490
    instance-of v0, p2, Lgnu/bytecode/UninitializedType;

    if-nez v0, :cond_6

    goto :goto_4

    .line 1491
    :cond_6
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "passing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as parameter"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v5, :cond_10

    .line 1495
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object p2

    .line 1497
    instance-of v0, p2, Lgnu/bytecode/UninitializedType;

    if-eqz v0, :cond_f

    .line 1499
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/UninitializedType;

    iget-object v0, v0, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    .line 1500
    :goto_5
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-ge v1, v2, :cond_9

    .line 1501
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    aget-object v3, v2, v1

    if-ne v3, p2, :cond_8

    .line 1502
    aput-object v0, v2, v1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1503
    :cond_9
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-nez v1, :cond_a

    const/4 v2, 0x0

    goto :goto_6

    .line 1504
    :cond_a
    array-length v2, v1

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_c

    .line 1506
    aget-object v3, v1, v2

    if-eqz v3, :cond_b

    .line 1507
    iget-object v5, v3, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    if-ne v5, p2, :cond_b

    .line 1508
    iput-object v0, v3, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    goto :goto_6

    .line 1510
    :cond_c
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    array-length v4, v1

    :cond_e
    :goto_7
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_10

    .line 1511
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v2, v1, v4

    if-ne v2, p2, :cond_e

    .line 1512
    aput-object v0, v1, v4

    goto :goto_7

    .line 1498
    :cond_f
    new-instance p1, Ljava/lang/Error;

    const-string p2, "calling <init> on already-initialized object"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1514
    :cond_10
    iget-object p2, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    iget p2, p2, Lgnu/bytecode/Type;->size:I

    if-eqz p2, :cond_11

    .line 1515
    iget-object p1, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    :cond_11
    return-void

    .line 1476
    :cond_12
    new-instance p2, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emitInvokeXxx static flag mis-match method.flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lgnu/bytecode/Method;->access_flags:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public emitInvokeSpecial(Lgnu/bytecode/Method;)V
    .locals 1

    const/16 v0, 0xb7

    .line 1543
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    return-void
.end method

.method public emitInvokeStatic(Lgnu/bytecode/Method;)V
    .locals 1

    const/16 v0, 0xb8

    .line 1552
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    return-void
.end method

.method public emitInvokeVirtual(Lgnu/bytecode/Method;)V
    .locals 1

    const/16 v0, 0xb6

    .line 1538
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    return-void
.end method

.method public final emitJsr(Lgnu/bytecode/Label;)V
    .locals 1

    const/4 v0, 0x5

    .line 1583
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    const/4 p1, 0x3

    .line 1584
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 p1, 0xa8

    .line 1585
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1586
    iget p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public final emitLoad(Lgnu/bytecode/Variable;)V
    .locals 4

    .line 1347
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1349
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    if-ltz v0, :cond_1

    .line 1350
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1353
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    const/4 v2, 0x4

    .line 1354
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1355
    invoke-direct {p0, v1}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v1

    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1a

    add-int/2addr v1, v0

    .line 1357
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x15

    .line 1359
    invoke-virtual {p0, v1, v0}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    .line 1360
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void

    .line 1351
    :cond_1
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to load from unassigned variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " simple:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", offset: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string v0, "attempting to push dead variable"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method emitMaybeWide(II)V
    .locals 1

    const/16 v0, 0x100

    if-lt p2, v0, :cond_0

    const/16 v0, 0xc4

    .line 1330
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1331
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1332
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0

    .line 1336
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1337
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    :goto_0
    return-void
.end method

.method public final emitMonitorEnter()V
    .locals 1

    .line 2050
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/4 v0, 0x1

    .line 2051
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v0, 0xc2

    .line 2052
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    return-void
.end method

.method public final emitMonitorExit()V
    .locals 1

    .line 2057
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/4 v0, 0x1

    .line 2058
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v0, 0xc3

    .line 2059
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    return-void
.end method

.method public final emitMul()V
    .locals 1

    const/16 v0, 0x68

    .line 1281
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitNew(Lgnu/bytecode/ClassType;)V
    .locals 2

    const/4 v0, 0x3

    .line 1175
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1176
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1177
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    const/16 v1, 0xbb

    .line 1178
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1179
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1180
    new-instance v1, Lgnu/bytecode/UninitializedType;

    invoke-direct {v1, p1, v0}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;Lgnu/bytecode/Label;)V

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method emitNewArray(I)V
    .locals 1

    const/4 v0, 0x2

    .line 1063
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v0, 0xbc

    .line 1064
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1065
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;)V
    .locals 1

    const/4 v0, 0x1

    .line 1235
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;I)V

    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;I)V
    .locals 3

    .line 1189
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const-string v2, "non-int dim. spec. in emitNewArray"

    if-ne v0, v1, :cond_b

    .line 1192
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    .line 1195
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x46

    if-eq p2, v0, :cond_3

    const/16 v0, 0x53

    if-eq p2, v0, :cond_2

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_4

    const/16 v0, 0x49

    if-eq p2, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1205
    new-instance p1, Ljava/lang/Error;

    const-string p2, "bad PrimType in emitNewArray"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    .line 1207
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitNewArray(I)V

    goto :goto_2

    .line 1209
    :cond_5
    instance-of v0, p1, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_6

    const/4 p2, 0x3

    .line 1211
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 p2, 0xbd

    .line 1212
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1213
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ObjectType;

    invoke-virtual {p2, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object p2

    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_2

    .line 1215
    :cond_6
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_a

    .line 1217
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v0, 0xc5

    .line 1218
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1219
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    new-instance v1, Lgnu/bytecode/ArrayType;

    invoke-direct {v1, p1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_9

    const/16 v0, 0xff

    if-gt p2, v0, :cond_9

    .line 1222
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_8

    .line 1224
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v0, v1, :cond_7

    goto :goto_1

    .line 1225
    :cond_7
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1230
    :cond_8
    :goto_2
    new-instance p2, Lgnu/bytecode/ArrayType;

    invoke-direct {p2, p1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void

    .line 1221
    :cond_9
    new-instance p1, Ljava/lang/Error;

    const-string p2, "dims out of range in emitNewArray"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1228
    :cond_a
    new-instance p1, Ljava/lang/Error;

    const-string p2, "unimplemented type in emitNewArray"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1190
    :cond_b
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final emitNot(Lgnu/bytecode/Type;)V
    .locals 1

    const/4 v0, 0x1

    .line 1311
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1312
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitAdd()V

    .line 1313
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1314
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    return-void
.end method

.method public emitPop(I)V
    .locals 5

    :goto_0
    if-lez p1, :cond_3

    const/4 v0, 0x1

    .line 462
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 463
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 464
    iget v1, v1, Lgnu/bytecode/Type;->size:I

    const/16 v2, 0x58

    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    .line 465
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x57

    if-le p1, v0, :cond_2

    .line 468
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 469
    iget v4, v4, Lgnu/bytecode/Type;->size:I

    if-le v4, v3, :cond_1

    .line 471
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 472
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 474
    :cond_1
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 478
    :cond_2
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public emitPrimop(IILgnu/bytecode/Type;)V
    .locals 1

    const/4 v0, 0x1

    .line 1319
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 1321
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    goto :goto_0

    .line 1322
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1323
    invoke-virtual {p0, p3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitPushClass(Lgnu/bytecode/ObjectType;)V
    .locals 1

    .line 944
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 945
    sget-object p1, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitPushConstant(ILgnu/bytecode/Type;)V
    .locals 1

    .line 710
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x46

    if-eq p2, v0, :cond_2

    const/16 v0, 0x53

    if-eq p2, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x49

    if-eq p2, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 721
    new-instance p1, Ljava/lang/Error;

    const-string p2, "bad type to emitPushConstant"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    int-to-double p1, p1

    .line 719
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto :goto_0

    :cond_0
    int-to-long p1, p1

    .line 715
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto :goto_0

    .line 713
    :cond_1
    :pswitch_1
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_0

    :cond_2
    int-to-float p1, p1

    .line 717
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final emitPushConstant(Lgnu/bytecode/CpoolEntry;)V
    .locals 1

    const/4 v0, 0x3

    .line 729
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 730
    iget v0, p1, Lgnu/bytecode/CpoolEntry;->index:I

    .line 731
    instance-of p1, p1, Lgnu/bytecode/CpoolValue2;

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    .line 733
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 734
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x100

    if-ge v0, p1, :cond_1

    const/16 p1, 0x12

    .line 738
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 739
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x13

    .line 743
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 744
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    :goto_0
    return-void
.end method

.method public emitPushDefaultValue(Lgnu/bytecode/Type;)V
    .locals 1

    .line 958
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 959
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 960
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    :goto_0
    return-void
.end method

.method public emitPushDouble(D)V
    .locals 4

    double-to-int v0, p1

    int-to-double v1, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_2

    const/16 v1, -0x80

    if-lt v0, v1, :cond_2

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 843
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 844
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/16 p1, 0x87

    .line 845
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 830
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    add-int/lit8 v2, v0, 0xe

    .line 831
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    if-nez v0, :cond_3

    .line 832
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    .line 834
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 p1, 0x77

    .line 835
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 850
    :cond_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 852
    :cond_3
    :goto_1
    sget-object p1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitPushFloat(F)V
    .locals 3

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    const/16 v1, -0x80

    if-lt v0, v1, :cond_1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 798
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    add-int/lit8 v2, v0, 0xb

    .line 799
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    if-nez v0, :cond_2

    .line 800
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eqz p1, :cond_2

    .line 802
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 p1, 0x76

    .line 803
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 811
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 812
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/16 p1, 0x86

    .line 813
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 818
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 820
    :cond_2
    :goto_0
    sget-object p1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitPushInt(I)V
    .locals 2

    const/4 v0, 0x3

    .line 750
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/4 v1, -0x1

    if-lt p1, v1, :cond_0

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    add-int/2addr p1, v0

    .line 752
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    const/16 v0, 0x10

    .line 755
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 756
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const v0, 0x8000

    if-ge p1, v0, :cond_2

    const/16 v0, 0x11

    .line 760
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 761
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0

    .line 765
    :cond_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 767
    :goto_0
    sget-object p1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitPushLong(J)V
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v1, p1

    int-to-long v2, v1

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    .line 779
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 780
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 781
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/16 p1, 0x85

    .line 782
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 786
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_1

    .line 774
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    long-to-int p2, p1

    add-int/lit8 p2, p2, 0x9

    .line 775
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 788
    :goto_1
    sget-object p1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public emitPushNull()V
    .locals 1

    const/4 v0, 0x1

    .line 950
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 951
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 952
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V
    .locals 20

    move-object/from16 v0, p0

    .line 983
    invoke-virtual/range {p2 .. p2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 984
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 985
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 986
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 987
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    if-ge v4, v2, :cond_d

    const/16 v6, 0x4a

    const/16 v7, 0x49

    const/16 v8, 0x5a

    const/16 v9, 0x53

    const/16 v10, 0x46

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    if-eq v3, v10, :cond_8

    if-eq v3, v9, :cond_7

    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    move-object/from16 v6, p2

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1029
    :pswitch_0
    move-object/from16 v15, p1

    check-cast v15, [D

    check-cast v15, [D

    aget-wide v16, v15, v4

    cmpl-double v15, v16, v11

    if-nez v15, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v6, p2

    move-wide/from16 v11, v16

    goto :goto_1

    .line 1009
    :pswitch_1
    move-object/from16 v15, p1

    check-cast v15, [C

    check-cast v15, [C

    aget-char v15, v15, v4

    int-to-long v5, v15

    cmp-long v15, v5, v13

    if-nez v15, :cond_1

    goto :goto_2

    .line 1014
    :pswitch_2
    move-object/from16 v5, p1

    check-cast v5, [B

    check-cast v5, [B

    aget-byte v5, v5, v4

    int-to-long v5, v5

    cmp-long v15, v5, v13

    if-nez v15, :cond_1

    :goto_2
    move-object/from16 v6, p2

    goto/16 :goto_6

    :cond_1
    move-wide v13, v5

    const/4 v5, 0x0

    move-object/from16 v6, p2

    goto :goto_4

    .line 994
    :cond_2
    move-object/from16 v5, p1

    check-cast v5, [J

    check-cast v5, [J

    aget-wide v18, v5, v4

    cmp-long v5, v18, v13

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v6, p2

    move-wide/from16 v13, v18

    goto :goto_1

    .line 999
    :cond_4
    move-object/from16 v5, p1

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v4

    int-to-long v5, v5

    cmp-long v15, v5, v13

    if-nez v15, :cond_1

    goto :goto_2

    .line 1019
    :cond_5
    move-object/from16 v5, p1

    check-cast v5, [Z

    check-cast v5, [Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_6

    const-wide/16 v5, 0x1

    goto :goto_3

    :cond_6
    move-wide v5, v13

    :goto_3
    cmp-long v15, v5, v13

    if-nez v15, :cond_1

    goto :goto_2

    .line 1004
    :cond_7
    move-object/from16 v5, p1

    check-cast v5, [S

    check-cast v5, [S

    aget-short v5, v5, v4

    int-to-long v5, v5

    cmp-long v15, v5, v13

    if-nez v15, :cond_1

    goto :goto_2

    .line 1024
    :cond_8
    move-object/from16 v5, p1

    check-cast v5, [F

    check-cast v5, [F

    aget v5, v5, v4

    float-to-double v13, v5

    cmpl-double v6, v13, v11

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move-object/from16 v6, p2

    const-wide/16 v13, 0x0

    .line 1034
    :goto_4
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1035
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    if-eq v3, v10, :cond_c

    if-eq v3, v9, :cond_b

    if-eq v3, v8, :cond_b

    if-eq v3, v7, :cond_b

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_a

    packed-switch v3, :pswitch_data_1

    goto :goto_5

    .line 1052
    :pswitch_3
    invoke-virtual {v0, v11, v12}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto :goto_5

    .line 1046
    :cond_a
    invoke-virtual {v0, v13, v14}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto :goto_5

    :cond_b
    :pswitch_4
    long-to-int v5, v13

    .line 1043
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_5

    .line 1049
    :cond_c
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    .line 1055
    :goto_5
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final emitPushString(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    .line 891
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 895
    invoke-static {p1}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 898
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 936
    sget-object p1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    .line 903
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 904
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 906
    sget-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string v1, "concat"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 908
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_2

    :cond_2
    const-string v4, "java.lang.StringBuffer"

    .line 912
    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 913
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 914
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 915
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    new-array v0, v3, [Lgnu/bytecode/Type;

    .line 916
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v6, v0, v5

    const-string v6, "<init>"

    .line 917
    invoke-virtual {v4, v6, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    new-array v0, v3, [Lgnu/bytecode/Type;

    .line 918
    sget-object v3, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v3, v0, v5

    const-string v3, "append"

    .line 919
    invoke-virtual {v4, v3, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 924
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 925
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v7, v6

    .line 926
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_1

    .line 930
    :cond_3
    sget-object v0, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 932
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 933
    sget-object p1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string v0, "intern"

    invoke-virtual {p1, v0, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    :cond_4
    return-void
.end method

.method public final emitPushThis()V
    .locals 2

    .line 974
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public final emitPutField(Lgnu/bytecode/Field;)V
    .locals 1

    .line 1451
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1452
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/16 v0, 0xb5

    .line 1453
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    return-void
.end method

.method public final emitPutStatic(Lgnu/bytecode/Field;)V
    .locals 1

    .line 1442
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/16 v0, 0xb3

    .line 1443
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    return-void
.end method

.method final emitRawReturn()V
    .locals 2

    .line 2077
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/Type;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2079
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v0, 0xb1

    .line 2080
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xac

    .line 2083
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 2084
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    return-void
.end method

.method public final emitRem()V
    .locals 1

    const/16 v0, 0x70

    .line 1283
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitRet(Lgnu/bytecode/Variable;)V
    .locals 2

    .line 1827
    iget p1, p1, Lgnu/bytecode/Variable;->offset:I

    const/16 v0, 0xa9

    const/16 v1, 0x100

    if-ge p1, v1, :cond_0

    const/4 v1, 0x2

    .line 1830
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1831
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1832
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 1836
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v1, 0xc4

    .line 1837
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1838
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1839
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put2(I)V

    :goto_0
    return-void
.end method

.method public final emitReturn()V
    .locals 1

    .line 2070
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_0

    .line 2071
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .line 2072
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitRawReturn()V

    return-void
.end method

.method public final emitShl()V
    .locals 1

    const/16 v0, 0x78

    .line 1288
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public final emitShr()V
    .locals 1

    const/16 v0, 0x7a

    .line 1289
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitStore(Lgnu/bytecode/Variable;)V
    .locals 4

    .line 1365
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    if-ltz v0, :cond_1

    .line 1366
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1369
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object p1

    .line 1370
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    const/4 v1, 0x4

    .line 1371
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1372
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1373
    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result p1

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x3b

    add-int/2addr p1, v0

    .line 1375
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x36

    .line 1377
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    :goto_0
    return-void

    .line 1367
    :cond_1
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to store in unassigned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " simple:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", offset: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public emitStoreDefaultValue(Lgnu/bytecode/Variable;)V
    .locals 1

    .line 968
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushDefaultValue(Lgnu/bytecode/Type;)V

    .line 969
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public final emitSub()V
    .locals 1

    const/16 v0, 0x64

    .line 1279
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitSub(C)V
    .locals 1

    const/16 v0, 0x64

    .line 1276
    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitSub(Lgnu/bytecode/PrimType;)V
    .locals 1

    const/16 v0, 0x64

    .line 1277
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public emitSwap()V
    .locals 5

    const/4 v0, 0x1

    .line 494
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 495
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 496
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 498
    iget v3, v1, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    iget v3, v2, Lgnu/bytecode/Type;->size:I

    if-le v3, v4, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    const/16 v0, 0x5f

    .line 510
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 511
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 502
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 503
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 504
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 505
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    :goto_1
    return-void
.end method

.method public emitTailCall(ZLgnu/bytecode/Scope;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 2461
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object p1

    .line 2462
    iget v0, p1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2463
    :goto_0
    iget-object v2, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v2, v2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ltz v2, :cond_2

    .line 2464
    iget-object v5, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v5, v5, v2

    iget v5, v5, Lgnu/bytecode/Type;->size:I

    if-le v5, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_2
    add-int/2addr v0, v3

    goto :goto_1

    .line 2465
    :cond_2
    iget-object v2, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v2, v2

    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 2467
    iget-object v5, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v5, v5, v2

    iget v5, v5, Lgnu/bytecode/Type;->size:I

    if-le v5, v4, :cond_3

    const/4 v5, 0x2

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    :goto_4
    sub-int/2addr v0, v5

    .line 2468
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v5, v5, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_3

    .line 2471
    :cond_4
    iget-object p1, p2, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    return-void
.end method

.method public final emitThen()V
    .locals 2

    .line 1845
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    return-void
.end method

.method public final emitThrow()V
    .locals 1

    .line 2042
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    const/4 v0, 0x1

    .line 2043
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    const/16 v0, 0xbf

    .line 2044
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2045
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    return-void
.end method

.method final emitTransfer(Lgnu/bytecode/Label;I)V
    .locals 1

    .line 1562
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    const/4 v0, 0x6

    .line 1563
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1564
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1565
    iget p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public emitTryCatchEnd()V
    .locals 3

    .line 2405
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_0

    .line 2406
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 2407
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    .line 2408
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v1, :cond_1

    .line 2409
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto :goto_1

    .line 2412
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v1, v1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2413
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v1, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    if-eqz v0, :cond_3

    .line 2416
    array-length v1, v0

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 2418
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 2420
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 2424
    :cond_3
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_4

    .line 2425
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2427
    :cond_4
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 2428
    :cond_5
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 2429
    :cond_6
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    return-void
.end method

.method public emitTryEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 2242
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    return-void
.end method

.method public emitTryStart(ZLgnu/bytecode/Type;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2197
    invoke-virtual {p2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    :cond_0
    if-nez p2, :cond_1

    .line 2200
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v1, :cond_2

    .line 2201
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 2202
    :cond_2
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 2204
    new-array v0, v1, [Lgnu/bytecode/Variable;

    const/4 v1, 0x0

    .line 2206
    :goto_0
    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v3, :cond_3

    .line 2208
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 2209
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    add-int/lit8 v4, v1, 0x1

    .line 2210
    aput-object v3, v0, v1

    move v1, v4

    goto :goto_0

    .line 2213
    :cond_3
    new-instance v1, Lgnu/bytecode/TryState;

    invoke-direct {v1, p0}, Lgnu/bytecode/TryState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2214
    iput-object v0, v1, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    .line 2216
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    array-length v0, v0

    :goto_1
    if-lez v0, :cond_6

    .line 2219
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 2226
    sget-object v0, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    goto :goto_3

    .line 2229
    :cond_7
    new-array v3, v0, [Lgnu/bytecode/Type;

    .line 2230
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 2232
    :goto_3
    iget-object v2, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iput-object v0, v2, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz p2, :cond_8

    .line 2235
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p2

    iput-object p2, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    :cond_8
    if-eqz p1, :cond_9

    .line 2237
    new-instance p1, Lgnu/bytecode/Label;

    invoke-direct {p1}, Lgnu/bytecode/Label;-><init>()V

    iput-object p1, v1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    :cond_9
    return-void
.end method

.method public final emitUshr()V
    .locals 1

    const/16 v0, 0x7c

    .line 1290
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitWithCleanupCatch(Lgnu/bytecode/Variable;)V
    .locals 4

    .line 2153
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2155
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v0, :cond_0

    .line 2157
    new-array v1, v0, [Lgnu/bytecode/Type;

    .line 2158
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2159
    iput v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2163
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, v0, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    .line 2165
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object p1, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2167
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public emitWithCleanupDone()V
    .locals 5

    .line 2174
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2175
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    .line 2177
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2178
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2179
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2180
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    .line 2181
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2184
    array-length v2, v0

    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2185
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v4, v3

    if-lt v2, v4, :cond_1

    .line 2186
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    goto :goto_0

    .line 2188
    :cond_1
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2191
    :cond_2
    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    :goto_0
    return-void
.end method

.method public emitWithCleanupStart()V
    .locals 3

    .line 2142
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v1, 0x0

    .line 2143
    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v2, 0x0

    .line 2144
    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2145
    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    return-void
.end method

.method public final emitXOr()V
    .locals 1

    const/16 v0, 0x82

    .line 1286
    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public endExitableBlock()V
    .locals 1

    .line 1608
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1609
    invoke-virtual {v0}, Lgnu/bytecode/ExitableBlock;->finish()V

    .line 1610
    iget-object v0, v0, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    return-void
.end method

.method public endFragment(I)V
    .locals 3

    .line 3285
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    iget v1, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    shl-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0xa

    aput v1, v0, p1

    .line 3286
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object p1, v0, p1

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3287
    invoke-virtual {p0, v0, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 3288
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .locals 1

    .line 629
    invoke-virtual {p1, p0}, Lgnu/bytecode/Scope;->setStartPC(Lgnu/bytecode/CodeAttr;)V

    .line 630
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    return-void
.end method

.method final fixupAdd(IILgnu/bytecode/Label;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    .line 146
    iput-boolean v0, p3, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    .line 147
    :cond_0
    iget v1, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-nez v1, :cond_1

    const/16 v2, 0x1e

    new-array v3, v2, [I

    .line 150
    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    new-array v2, v2, [Lgnu/bytecode/Label;

    .line 151
    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x2

    .line 156
    new-array v3, v2, [Lgnu/bytecode/Label;

    .line 157
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 159
    new-array v2, v2, [I

    .line 160
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    .line 163
    :cond_2
    :goto_0
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    aput p1, v2, v1

    .line 164
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aput-object p3, p1, v1

    add-int/2addr v1, v0

    .line 165
    iput v1, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    return-void
.end method

.method public final fixupAdd(ILgnu/bytecode/Label;)V
    .locals 1

    .line 139
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p0, p1, v0, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    return-void
.end method

.method public final fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 131
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public getArg(I)Lgnu/bytecode/Variable;
    .locals 1

    .line 660
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object p1

    return-object p1
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public getCode()[B
    .locals 1

    .line 220
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    .line 231
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return v0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    iget-object v0, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method

.method public getCurrentScope()Lgnu/bytecode/Scope;
    .locals 1

    .line 646
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    return-object v0
.end method

.method public final getCurrentTry()Lgnu/bytecode/TryState;
    .locals 1

    .line 2434
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    return-object v0
.end method

.method public getLabel()Lgnu/bytecode/Label;
    .locals 1

    .line 487
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    .line 488
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    return-object v0
.end method

.method public final getLength()I
    .locals 2

    .line 2809
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-static {p0}, Lgnu/bytecode/Attribute;->getLengthAll(Lgnu/bytecode/AttrContainer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 211
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 209
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Method;

    return-object v0
.end method

.method public final getPC()I
    .locals 1

    .line 191
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return v0
.end method

.method public final getSP()I
    .locals 1

    .line 193
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    return v0
.end method

.method invert_opcode(B)B
    .locals 1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x99

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa6

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xc6

    if-lt p1, v0, :cond_2

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_2

    :cond_1
    xor-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    return p1

    .line 261
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string v0, "unknown opcode to invert_opcode"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isInTry()Z
    .locals 1

    .line 2441
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 2

    .line 670
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    :goto_0
    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 671
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method noteParamTypes()V
    .locals 8

    .line 322
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 324
    iget v1, v0, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 326
    iget-object v1, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    .line 327
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<init>"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.Object"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    move-object v4, v1

    check-cast v4, Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/bytecode/UninitializedType;->uninitializedThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/UninitializedType;

    move-result-object v1

    .line 330
    :cond_0
    invoke-virtual {p0, v2, v1}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 332
    :goto_0
    iget-object v4, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 335
    iget-object v6, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v6, v6, v5

    add-int/lit8 v7, v1, 0x1

    .line 336
    invoke-virtual {p0, v1, v6}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 337
    invoke-virtual {v6}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v1, v7

    goto :goto_1

    .line 340
    :cond_3
    iget v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 342
    new-instance v0, Lgnu/bytecode/StackMapTableAttr;

    invoke-direct {v0}, Lgnu/bytecode/StackMapTableAttr;-><init>()V

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    add-int/lit8 v0, v1, 0x14

    .line 344
    new-array v0, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v1, :cond_6

    .line 348
    iget-object v6, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iget-object v7, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7, p0}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 349
    aput v6, v0, v5

    and-int/lit16 v5, v6, 0xff

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/2addr v4, v3

    move v5, v7

    goto :goto_3

    .line 354
    :cond_6
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iput-object v0, v1, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 355
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iput v5, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 356
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 357
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iput v2, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    :cond_7
    return-void
.end method

.method public noteVarType(ILgnu/bytecode/Type;)V
    .locals 6

    .line 363
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v0

    .line 365
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x14

    .line 366
    new-array v1, v1, [Lgnu/bytecode/Type;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    goto :goto_0

    :cond_0
    add-int v4, p1, v0

    .line 367
    array-length v5, v1

    if-le v4, v5, :cond_1

    mul-int/lit8 v4, v4, 0x2

    .line 368
    new-array v4, v4, [Lgnu/bytecode/Type;

    .line 369
    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iput-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    .line 372
    :cond_1
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object p2, v1, p1

    .line 373
    iget-object p2, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-nez p2, :cond_2

    .line 374
    array-length p2, v1

    new-array p2, p2, [Z

    iput-object p2, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    goto :goto_1

    .line 375
    :cond_2
    array-length v4, p2

    if-gt v4, p1, :cond_3

    .line 377
    array-length v1, v1

    new-array v1, v1, [Z

    .line 378
    array-length v4, p2

    invoke-static {p2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 381
    :cond_3
    :goto_1
    iget-object p2, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    const/4 v1, 0x1

    aput-boolean v1, p2, p1

    const/4 p2, 0x0

    if-lez p1, :cond_4

    .line 384
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_4

    .line 385
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 386
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object p2, v2, v4

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_5

    .line 389
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/2addr p1, v1

    aput-object p2, v2, p1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public popScope()Lgnu/bytecode/Scope;
    .locals 3

    .line 650
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 651
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v2, v1, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 652
    invoke-virtual {v0, p0}, Lgnu/bytecode/Scope;->freeLocals(Lgnu/bytecode/CodeAttr;)V

    .line 653
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    return-object v0
.end method

.method public final popType()Lgnu/bytecode/Type;
    .locals 3

    .line 441
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v0, :cond_2

    .line 443
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    aget-object v0, v1, v0

    .line 444
    iget v1, v0, Lgnu/bytecode/Type;->size:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 445
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "missing void type on stack"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0

    .line 442
    :cond_2
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popType called with empty stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 5

    const-string v0, "Attribute \""

    .line 2835
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 2837
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", max_stack:"

    .line 2839
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2840
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", max_locals:"

    .line 2841
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2842
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", code_length:"

    .line 2843
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    .line 2845
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    const/4 v1, 0x0

    .line 2846
    invoke-virtual {p0, p1, v1, v0}, Lgnu/bytecode/CodeAttr;->disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V

    .line 2847
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    if-lez v0, :cond_1

    const-string v0, "Exceptions (count: "

    .line 2849
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2850
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, "):"

    .line 2851
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 2852
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const-string v2, "  start: "

    .line 2855
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2856
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    aget-short v2, v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v2, ", end: "

    .line 2857
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2858
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v4, v1, 0x1

    aget-short v2, v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v2, ", handler: "

    .line 2859
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2860
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v4, v1, 0x2

    aget-short v2, v2, v4

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v2, ", type: "

    .line 2861
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2862
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v4, v1, 0x3

    aget-short v2, v2, v4

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const-string v2, "0 /* finally */"

    .line 2864
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2867
    :cond_0
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    const/4 v3, 0x7

    .line 2868
    invoke-virtual {p1, v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 2870
    :goto_1
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 2873
    :cond_1
    invoke-virtual {p1, p0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    return-void
.end method

.method public processFixups()V
    .locals 18

    move-object/from16 v0, p0

    .line 2476
    iget v1, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2486
    invoke-virtual {v0, v2, v3, v4}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2491
    :goto_0
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v7, v7, v5

    and-int/lit8 v8, v7, 0xf

    const/4 v9, 0x4

    shr-int/2addr v7, v9

    .line 2494
    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v11, v10, v5

    const v12, 0x8000

    const-string v13, "unexpected fixup"

    const/4 v15, 0x1

    packed-switch v8, :pswitch_data_0

    .line 2550
    :pswitch_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13

    :pswitch_2
    add-int/lit8 v5, v5, 0x2

    const/4 v3, 0x1

    const/4 v15, 0x0

    goto/16 :goto_15

    :pswitch_3
    add-int/lit8 v8, v5, 0x1

    .line 2533
    aget-object v8, v10, v8

    aput-object v8, v10, v1

    move v1, v7

    :pswitch_4
    add-int/lit8 v7, v5, 0x1

    .line 2537
    iget v8, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-lt v7, v8, :cond_1

    iget v7, v0, Lgnu/bytecode/CodeAttr;->PC:I

    goto :goto_1

    :cond_1
    aget-object v7, v10, v7

    iget v7, v7, Lgnu/bytecode/Label;->first_fixup:I

    invoke-direct {v0, v7}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v7

    .line 2539
    :goto_1
    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v10, v7, 0x4

    or-int/2addr v10, v2

    aput v10, v8, v5

    if-nez v11, :cond_1e

    .line 2558
    iget v1, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move v5, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2562
    :goto_2
    iget v6, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    const/4 v8, 0x6

    const/4 v12, 0x3

    if-ge v1, v6, :cond_9

    .line 2564
    iget-object v6, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v6, v6, v1

    and-int/lit8 v7, v6, 0xf

    .line 2566
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v11, v11, v1

    if-eqz v11, :cond_3

    .line 2567
    iget v14, v11, Lgnu/bytecode/Label;->position:I

    if-ltz v14, :cond_2

    goto :goto_3

    .line 2568
    :cond_2
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undefined label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_3
    const/4 v14, 0x7

    if-eqz v11, :cond_4

    if-lt v7, v9, :cond_4

    if-gt v7, v14, :cond_4

    .line 2572
    iget v4, v11, Lgnu/bytecode/Label;->first_fixup:I

    add-int/2addr v4, v15

    iget v10, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-ge v4, v10, :cond_4

    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    iget v10, v11, Lgnu/bytecode/Label;->first_fixup:I

    add-int/2addr v10, v15

    aget v4, v4, v10

    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    iget v3, v11, Lgnu/bytecode/Label;->first_fixup:I

    aget v3, v10, v3

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v3, v9

    if-ne v4, v3, :cond_4

    .line 2578
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    iget v4, v11, Lgnu/bytecode/Label;->first_fixup:I

    add-int/2addr v4, v15

    aget-object v11, v3, v4

    .line 2579
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aput-object v11, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    shr-int/lit8 v3, v6, 0x4

    packed-switch v7, :pswitch_data_1

    .line 2630
    :pswitch_5
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_7
    add-int/lit8 v1, v1, 0x2

    .line 2586
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v4, v4, v1

    add-int/2addr v3, v2

    iput v3, v4, Lgnu/bytecode/Label;->position:I

    goto :goto_6

    :pswitch_8
    if-nez v11, :cond_5

    goto :goto_8

    .line 2624
    :cond_5
    iget v1, v11, Lgnu/bytecode/Label;->first_fixup:I

    .line 2625
    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v4

    add-int/2addr v3, v2

    sub-int v2, v3, v4

    goto :goto_7

    :pswitch_9
    add-int/lit8 v2, v2, -0x3

    add-int/lit8 v5, v5, -0x3

    goto :goto_6

    .line 2608
    :pswitch_a
    iget v4, v11, Lgnu/bytecode/Label;->position:I

    add-int v6, v3, v2

    sub-int/2addr v4, v6

    int-to-short v6, v4

    if-ne v6, v4, :cond_6

    .line 2611
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v14

    aput v3, v4, v1

    goto :goto_6

    :cond_6
    const/4 v3, 0x5

    if-ne v7, v8, :cond_7

    const/4 v4, 0x5

    goto :goto_4

    :cond_7
    const/4 v4, 0x2

    :goto_4
    add-int/2addr v2, v4

    if-ne v7, v8, :cond_8

    const/4 v10, 0x5

    goto :goto_5

    :cond_8
    const/4 v10, 0x2

    :goto_5
    add-int/2addr v5, v10

    goto :goto_6

    :pswitch_b
    add-int/2addr v3, v2

    rsub-int/lit8 v3, v3, 0x3

    and-int/2addr v3, v12

    add-int/2addr v2, v3

    add-int/2addr v5, v3

    goto :goto_6

    :pswitch_c
    add-int/2addr v3, v2

    .line 2598
    iput v3, v11, Lgnu/bytecode/Label;->position:I

    :goto_6
    :pswitch_d
    add-int/2addr v1, v15

    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2635
    :cond_9
    :goto_8
    new-array v3, v5, [B

    const/4 v1, 0x0

    .line 2639
    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v2

    const/4 v4, -0x1

    move v7, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_9
    if-ge v1, v7, :cond_a

    add-int/lit8 v11, v6, 0x1

    .line 2646
    iget-object v14, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v17, v1, 0x1

    aget-byte v1, v14, v1

    aput-byte v1, v3, v6

    move v6, v11

    move/from16 v1, v17

    goto :goto_9

    .line 2649
    :cond_a
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v7, v7, v2

    and-int/lit8 v7, v7, 0xf

    .line 2650
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v11, v11, v2

    if-eqz v9, :cond_b

    .line 2651
    iget v14, v9, Lgnu/bytecode/Label;->position:I

    if-ge v14, v6, :cond_b

    .line 2654
    iget-object v14, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    invoke-virtual {v14, v9, v0}, Lgnu/bytecode/StackMapTableAttr;->emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V

    const/4 v9, 0x0

    :cond_b
    if-eqz v9, :cond_d

    .line 2657
    iget v14, v9, Lgnu/bytecode/Label;->position:I

    if-gt v14, v6, :cond_c

    goto :goto_a

    .line 2659
    :cond_c
    new-instance v1, Ljava/lang/Error;

    const-string v2, "labels out of order"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_a
    if-eqz v7, :cond_1c

    if-eq v7, v15, :cond_1b

    const/4 v14, 0x2

    if-eq v7, v14, :cond_17

    const/16 v14, 0xb

    if-eq v7, v14, :cond_15

    const/16 v14, 0xe

    if-eq v7, v14, :cond_12

    packed-switch v7, :pswitch_data_2

    .line 2763
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_e
    if-nez v11, :cond_f

    if-ne v5, v6, :cond_e

    .line 2771
    iput v5, v0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 2772
    iput-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    const/4 v1, 0x0

    .line 2773
    iput v1, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    const/4 v1, 0x0

    .line 2774
    iput-object v1, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 2775
    iput-object v1, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    return-void

    .line 2770
    :cond_e
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PC confusion new_pc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new_size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2755
    :cond_f
    iget v2, v11, Lgnu/bytecode/Label;->first_fixup:I

    .line 2756
    invoke-direct {v0, v2}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v7

    .line 2758
    iget v1, v11, Lgnu/bytecode/Label;->position:I

    if-ne v1, v6, :cond_10

    move v1, v7

    goto/16 :goto_9

    .line 2759
    :cond_10
    new-instance v1, Ljava/lang/Error;

    const-string v2, "bad pc"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_f
    add-int/lit8 v1, v1, 0x3

    goto :goto_b

    .line 2675
    :pswitch_10
    iget v7, v11, Lgnu/bytecode/Label;->position:I

    sub-int/2addr v7, v6

    add-int/lit8 v11, v6, 0x1

    .line 2676
    iget-object v14, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v14, v14, v1

    aput-byte v14, v3, v6

    add-int/lit8 v6, v11, 0x1

    shr-int/lit8 v14, v7, 0x8

    int-to-byte v14, v14

    .line 2677
    aput-byte v14, v3, v11

    add-int/lit8 v11, v6, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 2678
    aput-byte v7, v3, v6

    add-int/lit8 v1, v1, 0x3

    move v6, v11

    :goto_b
    const/4 v7, 0x1

    const/4 v15, 0x0

    goto/16 :goto_11

    .line 2684
    :pswitch_11
    iget v11, v11, Lgnu/bytecode/Label;->position:I

    sub-int/2addr v11, v6

    .line 2685
    iget-object v14, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v14, v14, v1

    if-ne v7, v8, :cond_11

    .line 2689
    invoke-virtual {v0, v14}, Lgnu/bytecode/CodeAttr;->invert_opcode(B)B

    move-result v7

    add-int/lit8 v14, v6, 0x1

    .line 2690
    aput-byte v7, v3, v6

    add-int/lit8 v6, v14, 0x1

    const/4 v7, 0x0

    .line 2691
    aput-byte v7, v3, v14

    add-int/lit8 v7, v6, 0x1

    const/16 v14, 0x8

    .line 2692
    aput-byte v14, v3, v6

    const/16 v6, -0x38

    move v6, v7

    const/16 v7, -0x38

    goto :goto_c

    :cond_11
    add-int/lit8 v14, v14, 0x21

    int-to-byte v7, v14

    :goto_c
    add-int/lit8 v14, v6, 0x1

    .line 2700
    aput-byte v7, v3, v6

    add-int/lit8 v6, v14, 0x1

    shr-int/lit8 v7, v11, 0x18

    int-to-byte v7, v7

    .line 2701
    aput-byte v7, v3, v14

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 2702
    aput-byte v14, v3, v6

    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 2703
    aput-byte v14, v3, v7

    add-int/lit8 v7, v6, 0x1

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    .line 2704
    aput-byte v11, v3, v6

    add-int/lit8 v1, v1, 0x3

    move v6, v7

    goto :goto_b

    .line 2742
    :cond_12
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    if-nez v7, :cond_13

    .line 2743
    new-instance v7, Lgnu/bytecode/LineNumbersAttr;

    invoke-direct {v7, v0}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v7, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 2745
    invoke-direct {v0, v2}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v7

    if-eq v7, v10, :cond_14

    .line 2747
    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    invoke-virtual {v10, v7, v6}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    :cond_14
    move v10, v7

    goto :goto_b

    .line 2730
    :cond_15
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    add-int/lit8 v11, v2, 0x2

    aget-object v7, v7, v11

    add-int/lit8 v14, v2, 0x1

    .line 2731
    invoke-direct {v0, v14}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v8

    .line 2732
    iget-object v15, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v15, :cond_16

    .line 2733
    invoke-direct {v0, v9, v7}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v9

    .line 2735
    :cond_16
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v2, v7, v2

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v7, v7, v14

    iget v7, v7, Lgnu/bytecode/Label;->position:I

    invoke-virtual {v0, v2, v7, v6, v8}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    move v2, v11

    goto/16 :goto_b

    :cond_17
    rsub-int/lit8 v7, v6, 0x3

    and-int/2addr v7, v12

    add-int/lit8 v8, v6, 0x1

    .line 2710
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v14, v1, 0x1

    aget-byte v1, v11, v1

    aput-byte v1, v3, v6

    :goto_d
    add-int/2addr v7, v4

    if-ltz v7, :cond_18

    add-int/lit8 v1, v8, 0x1

    const/4 v15, 0x0

    .line 2712
    aput-byte v15, v3, v8

    move v8, v1

    goto :goto_d

    :cond_18
    const/4 v15, 0x0

    .line 2714
    :goto_e
    iget v1, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-ge v2, v1, :cond_1a

    add-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupKind(I)I

    move-result v7

    if-ne v7, v12, :cond_1a

    .line 2717
    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v2

    :goto_f
    if-ge v14, v2, :cond_19

    add-int/lit8 v7, v8, 0x1

    .line 2719
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v16, v14, 0x1

    aget-byte v11, v11, v14

    aput-byte v11, v3, v8

    move v8, v7

    move/from16 v14, v16

    goto :goto_f

    .line 2720
    :cond_19
    iget-object v2, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v2, v2, v1

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    sub-int/2addr v2, v6

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v11, v2, 0x18

    int-to-byte v11, v11

    .line 2722
    aput-byte v11, v3, v8

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v11, v2, 0x10

    int-to-byte v11, v11

    .line 2723
    aput-byte v11, v3, v7

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    .line 2724
    aput-byte v11, v3, v8

    add-int/lit8 v8, v7, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 2725
    aput-byte v2, v3, v7

    add-int/lit8 v14, v14, 0x4

    move v2, v1

    goto :goto_e

    :cond_1a
    move v6, v8

    move v1, v14

    goto :goto_10

    :cond_1b
    const/4 v15, 0x0

    .line 2665
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v7, :cond_1d

    if-eqz v11, :cond_1d

    iget-object v7, v11, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v7, :cond_1d

    iget-boolean v7, v11, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    if-eqz v7, :cond_1d

    .line 2667
    invoke-direct {v0, v9, v11}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v7

    move-object v9, v7

    goto :goto_10

    :cond_1c
    const/4 v15, 0x0

    :cond_1d
    :goto_10
    const/4 v7, 0x1

    :goto_11
    add-int/2addr v2, v7

    .line 2766
    invoke-direct {v0, v2}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v7

    const/4 v8, 0x6

    const/4 v15, 0x1

    goto/16 :goto_9

    :cond_1e
    const/4 v15, 0x0

    .line 2544
    iget v5, v11, Lgnu/bytecode/Label;->first_fixup:I

    .line 2545
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v3

    add-int/2addr v7, v6

    sub-int v6, v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :pswitch_12
    const/4 v15, 0x0

    .line 2529
    iget v3, v0, Lgnu/bytecode/CodeAttr;->PC:I

    if-lt v3, v12, :cond_1f

    add-int/lit8 v6, v6, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_15

    :cond_1f
    const/4 v4, 0x0

    goto :goto_14

    :pswitch_13
    const/4 v15, 0x0

    goto :goto_12

    :pswitch_14
    const/4 v15, 0x0

    .line 2514
    iget v3, v11, Lgnu/bytecode/Label;->first_fixup:I

    add-int/lit8 v4, v5, 0x1

    if-ne v3, v4, :cond_20

    invoke-direct {v0, v4}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v3

    add-int/lit8 v4, v7, 0x3

    if-ne v3, v4, :cond_20

    .line 2518
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v4, v7, 0x4

    const/16 v7, 0x8

    or-int/2addr v4, v7

    aput v4, v3, v5

    .line 2519
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    const/4 v4, 0x0

    aput-object v4, v3, v5

    add-int/lit8 v6, v6, -0x3

    goto :goto_14

    :cond_20
    const/4 v4, 0x0

    .line 2525
    :goto_12
    iget v3, v0, Lgnu/bytecode/CodeAttr;->PC:I

    if-lt v3, v12, :cond_21

    add-int/lit8 v6, v6, 0x2

    goto :goto_14

    :pswitch_15
    const/4 v15, 0x0

    add-int/lit8 v6, v6, 0x3

    goto :goto_14

    :pswitch_16
    const/4 v15, 0x0

    .line 2507
    iget v3, v11, Lgnu/bytecode/Label;->position:I

    add-int/2addr v3, v6

    iput v3, v11, Lgnu/bytecode/Label;->position:I

    goto :goto_14

    :goto_13
    :pswitch_17
    const/4 v15, 0x0

    :cond_21
    :goto_14
    const/4 v3, 0x1

    :goto_15
    add-int/2addr v5, v3

    const/4 v3, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_17
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public pushScope()Lgnu/bytecode/Scope;
    .locals 3

    .line 635
    new-instance v0, Lgnu/bytecode/Scope;

    invoke-direct {v0}, Lgnu/bytecode/Scope;-><init>()V

    .line 636
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-nez v1, :cond_0

    .line 637
    new-instance v1, Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 638
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 639
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    if-nez v1, :cond_1

    .line 640
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iput-object v0, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    :cond_1
    return-object v0
.end method

.method public final pushType(Lgnu/bytecode/Type;)V
    .locals 4

    .line 423
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_2

    .line 428
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lgnu/bytecode/Type;

    const/4 v3, 0x0

    .line 429
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x14

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 426
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 432
    :cond_2
    :goto_1
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 433
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    aput-object v2, v0, v1

    .line 434
    :cond_3
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    aput-object p1, v0, v1

    .line 435
    iget p1, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    if-le v2, p1, :cond_4

    .line 436
    iput v2, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    :cond_4
    return-void

    .line 424
    :cond_5
    new-instance p1, Ljava/lang/Error;

    const-string v0, "pushing void type onto stack"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final put1(I)V
    .locals 3

    .line 270
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public final put2(I)V
    .locals 4

    .line 280
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 281
    iput v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public final put4(I)V
    .locals 4

    .line 291
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 292
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 293
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 295
    iput v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    const/4 p1, 0x0

    .line 296
    iput-boolean p1, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public final putIndex2(Lgnu/bytecode/CpoolEntry;)V
    .locals 0

    .line 301
    iget p1, p1, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put2(I)V

    return-void
.end method

.method public final putLineNumber(I)V
    .locals 2

    .line 313
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(I)I

    move-result p1

    :cond_0
    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    const/16 v0, 0xf

    .line 316
    invoke-virtual {p0, v0, p1, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    return-void
.end method

.method public final putLineNumber(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    iget-object v0, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 308
    :cond_0
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    return-void
.end method

.method public final reachableHere()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final reserve(I)V
    .locals 4

    .line 244
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x64

    .line 245
    new-array p1, p1, [B

    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    goto :goto_0

    .line 246
    :cond_0
    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int v2, v1, p1

    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 248
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    new-array p1, v2, [B

    const/4 v2, 0x0

    .line 249
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setCode([B)V
    .locals 0

    .line 225
    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    array-length p1, p1

    iput p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setCodeLength(I)V
    .locals 0

    .line 229
    iput p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setMaxLocals(I)V
    .locals 0

    .line 216
    iput p1, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    return-void
.end method

.method public setMaxStack(I)V
    .locals 0

    .line 214
    iput p1, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    return-void
.end method

.method public final setReachable(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 205
    iput-boolean p1, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public final setTypes(Lgnu/bytecode/Label;)V
    .locals 1

    .line 395
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iget-object p1, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-void
.end method

.method public final setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 5

    .line 401
    array-length v0, p2

    .line 402
    array-length v1, p1

    .line 403
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-lez v1, :cond_0

    .line 406
    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_0
    :goto_0
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 408
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz p1, :cond_3

    array-length p1, p1

    if-le v0, p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    .line 414
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v2, v1

    if-ge p1, v2, :cond_4

    .line 415
    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 411
    :cond_3
    :goto_2
    new-array p1, v0, [Lgnu/bytecode/Type;

    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 417
    :cond_4
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    invoke-static {p2, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    return-void
.end method

.method public final setUnreachable()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;
    .locals 1

    .line 1598
    new-instance v0, Lgnu/bytecode/ExitableBlock;

    invoke-direct {v0, p1, p0, p2}, Lgnu/bytecode/ExitableBlock;-><init>(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;Z)V

    .line 1599
    iget-object p1, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    iput-object p1, v0, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    .line 1600
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    return-object v0
.end method

.method public startSwitch()Lgnu/bytecode/SwitchState;
    .locals 1

    .line 2449
    new-instance v0, Lgnu/bytecode/SwitchState;

    invoke-direct {v0, p0}, Lgnu/bytecode/SwitchState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2450
    invoke-virtual {v0, p0}, Lgnu/bytecode/SwitchState;->switchValuePushed(Lgnu/bytecode/CodeAttr;)V

    return-object v0
.end method

.method public final topType()Lgnu/bytecode/Type;
    .locals 2

    .line 452
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method useJsr()Z
    .locals 1

    .line 56
    iget v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2815
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2816
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2817
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2818
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2820
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2821
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 2824
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2825
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v2, 0x1

    aget-short v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2826
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v2, 0x2

    aget-short v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2827
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v2, 0x3

    aget-short v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 2830
    :cond_0
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    return-void
.end method
