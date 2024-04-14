.class public Lgnu/bytecode/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field first_fixup:I

.field localTypes:[Lgnu/bytecode/Type;

.field needsStackMapEntry:Z

.field position:I

.field stackTypes:[Lgnu/bytecode/Type;

.field private typeChangeListeners:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lgnu/bytecode/Label;->position:I

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 0

    const/4 p1, -0x1

    .line 39
    invoke-direct {p0, p1}, Lgnu/bytecode/Label;-><init>(I)V

    return-void
.end method

.method private mergeLocalType(ILgnu/bytecode/Type;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v0, v0, p1

    .line 120
    invoke-virtual {p0, v0, p2}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p2

    .line 121
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object p2, v1, p1

    if-eq p2, v0, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/Label;->notifyTypeChangeListeners(ILgnu/bytecode/Type;)V

    :cond_0
    return-void
.end method

.method private notifyTypeChangeListeners(ILgnu/bytecode/Type;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 129
    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_2

    .line 131
    :cond_0
    aget-object v1, v0, p1

    if-nez v1, :cond_1

    return-void

    .line 134
    :cond_1
    instance-of v2, v1, Lgnu/bytecode/Label;

    if-eqz v2, :cond_2

    .line 135
    check-cast v1, Lgnu/bytecode/Label;

    invoke-direct {v1, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    goto :goto_1

    .line 138
    :cond_2
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/Label;

    .line 139
    invoke-direct {v2, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 142
    aput-object p2, v0, p1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method addTypeChangeListener(ILgnu/bytecode/Label;)V
    .locals 4

    .line 154
    iget-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0xa

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_0
    array-length v1, v0

    if-gt v1, p1, :cond_1

    add-int/lit8 v1, p1, 0xa

    .line 159
    new-array v1, v1, [Ljava/lang/Object;

    .line 160
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v1, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    move-object v0, v1

    .line 163
    :cond_1
    :goto_0
    aget-object v1, v0, p1

    if-nez v1, :cond_2

    .line 165
    aput-object p2, v0, p1

    goto :goto_2

    .line 169
    :cond_2
    instance-of v2, v1, Lgnu/bytecode/Label;

    if-eqz v2, :cond_3

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    check-cast v1, Lgnu/bytecode/Label;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    aput-object v2, v0, p1

    goto :goto_1

    .line 176
    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    .line 177
    :goto_1
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 183
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 188
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v2, v2

    if-le v2, v1, :cond_0

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    .line 192
    :cond_0
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    invoke-virtual {v2, v1, p0}, Lgnu/bytecode/Label;->addTypeChangeListener(ILgnu/bytecode/Label;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public define(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 216
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1

    .line 220
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_3

    .line 222
    array-length v0, v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 224
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 227
    :cond_2
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object v1, v2, v0

    goto :goto_0

    .line 231
    :cond_3
    :goto_1
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    .line 232
    iput-object v1, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 233
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 234
    iget-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    :cond_4
    const/4 v0, 0x1

    .line 237
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    return-void
.end method

.method public defineRaw(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 202
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-gez v0, :cond_1

    .line 204
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    iput v0, p0, Lgnu/bytecode/Label;->position:I

    .line 205
    iget v0, p1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iput v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p1, v0, p0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    :cond_0
    return-void

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string v0, "label definition more than once"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final defined()Z
    .locals 1

    .line 30
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 2

    .line 49
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    instance-of v1, p2, Lgnu/bytecode/PrimType;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    invoke-static {p1, p2}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public setTypes(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 102
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V

    .line 103
    iget-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    iget v0, p1, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v1, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    :goto_1
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget p1, p1, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    return-void
.end method

.method public setTypes(Lgnu/bytecode/Label;)V
    .locals 3

    .line 113
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v1, v0

    iget-object p1, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v2, p1

    invoke-virtual {p0, v0, v1, p1, v2}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    return-void
.end method

.method setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    .line 59
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    iget-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-nez p4, :cond_2

    .line 66
    sget-object p3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object p3, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    goto :goto_2

    .line 69
    :cond_2
    new-array v0, p4, [Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 70
    invoke-static {p3, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-nez p2, :cond_3

    .line 73
    sget-object p1, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object p1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    goto :goto_6

    .line 76
    :cond_3
    new-array p3, p2, [Lgnu/bytecode/Type;

    iput-object p3, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 77
    invoke-static {p1, v1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 83
    :cond_4
    array-length v0, v0

    if-ne p4, v0, :cond_9

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p4, :cond_5

    .line 88
    iget-object v2, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aget-object v3, v2, v0

    aget-object v4, p3, v0

    invoke-virtual {p0, v3, v4}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 90
    :cond_5
    iget-object p3, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length p4, p3

    if-ge p2, p4, :cond_6

    move p3, p2

    goto :goto_4

    :cond_6
    array-length p3, p3

    :goto_4
    if-ge v1, p3, :cond_7

    .line 93
    aget-object p4, p1, v1

    invoke-direct {p0, v1, p4}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 95
    :cond_7
    :goto_5
    iget-object p1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length p3, p1

    if-ge p2, p3, :cond_8

    const/4 p3, 0x0

    .line 96
    aput-object p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-void

    .line 85
    :cond_9
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "inconsistent stack length"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
