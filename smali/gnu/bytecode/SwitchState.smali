.class public Lgnu/bytecode/SwitchState;
.super Ljava/lang/Object;
.source "SwitchState.java"


# instance fields
.field after_label:Lgnu/bytecode/Label;

.field cases_label:Lgnu/bytecode/Label;

.field defaultLabel:Lgnu/bytecode/Label;

.field labels:[Lgnu/bytecode/Label;

.field maxValue:I

.field minValue:I

.field numCases:I

.field outerTry:Lgnu/bytecode/TryState;

.field switch_label:Lgnu/bytecode/Label;

.field values:[I


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    .line 63
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    .line 64
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    .line 65
    iget-object p1, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object p1, p0, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lgnu/bytecode/SwitchState;->numCases:I

    return-void
.end method


# virtual methods
.method public addCase(ILgnu/bytecode/CodeAttr;)Z
    .locals 2

    .line 89
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 90
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 91
    invoke-virtual {v0, p2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 92
    invoke-virtual {p0, p1, v0, p2}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result p1

    return p1
.end method

.method public addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z
    .locals 1

    .line 98
    invoke-virtual {p0, p1, p3, p2}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result p1

    .line 99
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {p3, v0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 100
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    return p1
.end method

.method public addDefault(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 106
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 107
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 108
    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 109
    iget-object p1, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    if-nez p1, :cond_0

    .line 110
    iput-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public exitSwitch(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    return-void

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "exitSwitch cannot exit through a try"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finish(Lgnu/bytecode/CodeAttr;)V
    .locals 10

    .line 193
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    .line 196
    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    const-string v0, "java.lang.RuntimeException"

    .line 197
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 199
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    const-string v3, "bad case value!"

    .line 200
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    new-array v3, v2, [Lgnu/bytecode/Type;

    .line 201
    sget-object v4, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v4, v3, v1

    .line 202
    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v5, "<init>"

    invoke-virtual {v0, v5, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 205
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 207
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    iget-object v3, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0, v3}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 208
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-gt v0, v2, :cond_3

    .line 210
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 211
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-ne v0, v2, :cond_2

    .line 213
    iget v0, p0, Lgnu/bytecode/SwitchState;->minValue:I

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 218
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 220
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 221
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 222
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 223
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto/16 :goto_4

    .line 227
    :cond_2
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 228
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto/16 :goto_4

    :cond_3
    mul-int/lit8 v3, v0, 0x2

    .line 231
    iget v4, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    iget v5, p0, Lgnu/bytecode/SwitchState;->minValue:I

    sub-int v6, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-lt v3, v6, :cond_5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xd

    .line 233
    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 234
    invoke-virtual {p1, v8, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    const/16 v0, 0xaa

    .line 235
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 236
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v9, v0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 237
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 238
    iget v0, p0, Lgnu/bytecode/SwitchState;->minValue:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 239
    iget v0, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 241
    iget v0, p0, Lgnu/bytecode/SwitchState;->minValue:I

    :goto_1
    iget v2, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    if-gt v0, v2, :cond_6

    .line 243
    iget-object v2, p0, Lgnu/bytecode/SwitchState;->values:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_4

    iget-object v2, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    add-int/lit8 v3, v1, 0x1

    aget-object v1, v2, v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    move v3, v1

    move-object v1, v2

    .line 244
    :goto_2
    invoke-virtual {p1, v9, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 245
    iget v1, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_1

    :cond_5
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x9

    .line 250
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 251
    invoke-virtual {p1, v8, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    const/16 v0, 0xab

    .line 252
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 253
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v9, v0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 254
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 255
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 256
    :goto_3
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-ge v1, v0, :cond_6

    .line 258
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->values:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 259
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aget-object v0, v0, v1

    invoke-virtual {p1, v9, v0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 260
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 263
    :cond_6
    :goto_4
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .line 56
    iget v0, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    return v0
.end method

.method public getNumCases()I
    .locals 1

    .line 58
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    return v0
.end method

.method public insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z
    .locals 7

    .line 121
    iget-object p3, p0, Lgnu/bytecode/SwitchState;->values:[I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/16 p3, 0xa

    new-array v2, p3, [I

    .line 123
    iput-object v2, p0, Lgnu/bytecode/SwitchState;->values:[I

    new-array p3, p3, [Lgnu/bytecode/Label;

    .line 124
    iput-object p3, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 125
    iput v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 126
    iput p1, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    iput p1, p0, Lgnu/bytecode/SwitchState;->minValue:I

    aput p1, v2, v1

    aput-object p2, p3, v1

    return v0

    .line 132
    :cond_0
    iget-object v2, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 133
    iget v3, p0, Lgnu/bytecode/SwitchState;->numCases:I

    array-length v4, p3

    if-lt v3, v4, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 135
    new-array v4, v4, [I

    iput-object v4, p0, Lgnu/bytecode/SwitchState;->values:[I

    mul-int/lit8 v4, v3, 0x2

    .line 136
    new-array v4, v4, [Lgnu/bytecode/Label;

    iput-object v4, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 139
    :cond_1
    iget v4, p0, Lgnu/bytecode/SwitchState;->minValue:I

    if-ge p1, v4, :cond_2

    .line 142
    iput p1, p0, Lgnu/bytecode/SwitchState;->minValue:I

    const/4 v3, 0x0

    goto :goto_1

    .line 144
    :cond_2
    iget v4, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    if-le p1, v4, :cond_3

    .line 147
    iput p1, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v3, :cond_5

    add-int v4, v5, v3

    ushr-int/2addr v4, v0

    .line 158
    aget v6, p3, v4

    if-lt v6, p1, :cond_4

    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v4, 0x1

    move v4, v5

    goto :goto_0

    .line 164
    :cond_5
    aget v3, p3, v4

    if-ne p1, v3, :cond_6

    return v1

    :cond_6
    move v3, v4

    .line 167
    :goto_1
    iget v4, p0, Lgnu/bytecode/SwitchState;->numCases:I

    sub-int/2addr v4, v3

    .line 168
    iget-object v5, p0, Lgnu/bytecode/SwitchState;->values:[I

    add-int/lit8 v6, v3, 0x1

    invoke-static {p3, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v5, p0, Lgnu/bytecode/SwitchState;->values:[I

    invoke-static {p3, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object p3, p0, Lgnu/bytecode/SwitchState;->values:[I

    aput p1, p3, v3

    .line 171
    iget-object p1, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    invoke-static {v2, v3, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget-object p1, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    invoke-static {v2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object p1, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aput-object p2, p1, v3

    .line 174
    iget p1, p0, Lgnu/bytecode/SwitchState;->numCases:I

    add-int/2addr p1, v0

    iput p1, p0, Lgnu/bytecode/SwitchState;->numCases:I

    return v0
.end method

.method public switchValuePushed(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 77
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 78
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    iget-object v1, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    return-void
.end method
