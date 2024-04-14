.class public Lgnu/bytecode/StackMapTableAttr;
.super Lgnu/bytecode/MiscAttr;
.source "StackMapTableAttr.java"


# static fields
.field public static compressStackMapTable:Z = true


# instance fields
.field countLocals:I

.field countStack:I

.field encodedLocals:[I

.field encodedStack:[I

.field numEntries:I

.field prevPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "StackMapTable"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, v0, v1, v2, v2}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 24
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    return-void
.end method

.method public constructor <init>([BLgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 30
    array-length v0, p1

    const-string v1, "StackMapTable"

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 31
    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 32
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result p1

    iput p1, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    return-void
.end method

.method static reallocBuffer([II)[I
    .locals 2

    if-nez p0, :cond_0

    add-int/lit8 p1, p1, 0xa

    .line 259
    new-array p0, p1, [I

    goto :goto_0

    .line 260
    :cond_0
    array-length v0, p0

    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, 0xa

    .line 262
    new-array p1, p1, [I

    .line 263
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V
    .locals 12

    .line 100
    iget v0, p1, Lgnu/bytecode/Label;->position:I

    iget v1, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 102
    iget-object v2, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v2, v2

    .line 103
    iget-object v3, p0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    array-length v4, v3

    const/4 v5, 0x0

    if-le v2, v4, :cond_0

    .line 105
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [I

    .line 106
    iget v6, p0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    invoke-static {v3, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v4, p0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 109
    :cond_0
    iget-object v3, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    .line 110
    iget-object v4, p0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    array-length v6, v4

    if-le v3, v6, :cond_1

    .line 112
    array-length v6, v4

    add-int/2addr v6, v3

    new-array v6, v6, [I

    .line 113
    iget v7, p0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    invoke-static {v4, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v6, p0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-ge v4, v2, :cond_5

    .line 120
    iget-object v9, p0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    aget v9, v9, v6

    .line 121
    iget-object v10, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v10, v10, v4

    invoke-virtual {p0, v10, p2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v10

    if-ne v9, v10, :cond_2

    if-ne v7, v6, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 125
    :cond_2
    iget-object v9, p0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    add-int/lit8 v11, v6, 0x1

    aput v10, v9, v6

    if-eq v10, v8, :cond_3

    const/4 v6, 0x4

    if-ne v10, v6, :cond_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/2addr v4, v1

    move v6, v11

    goto :goto_0

    :cond_5
    :goto_1
    if-lez v6, :cond_6

    .line 129
    iget-object v2, p0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    add-int/lit8 v4, v6, -0x1

    aget v2, v2, v4

    if-nez v2, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v2, v3, :cond_8

    .line 134
    iget-object v9, p0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    aget v9, v9, v4

    .line 135
    iget-object v9, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aget-object v9, v9, v2

    .line 136
    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    if-ne v9, v10, :cond_7

    .line 137
    iget-object v9, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v2, v2, 0x1

    aget-object v9, v9, v2

    .line 138
    :cond_7
    invoke-virtual {p0, v9, p2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v9

    .line 139
    iget-object v10, p0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    add-int/lit8 v11, v4, 0x1

    aput v9, v10, v4

    add-int/2addr v2, v1

    move v4, v11

    goto :goto_2

    .line 141
    :cond_8
    iget p2, p0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    sub-int v2, v6, p2

    .line 142
    sget-boolean v3, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    const/16 v9, 0xfb

    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    if-ne v6, v7, :cond_c

    if-gt v4, v1, :cond_c

    const/16 p2, 0x3f

    if-nez v4, :cond_a

    if-gt v0, p2, :cond_9

    .line 148
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    goto/16 :goto_7

    .line 151
    :cond_9
    invoke-virtual {p0, v9}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 152
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto/16 :goto_7

    :cond_a
    if-gt v0, p2, :cond_b

    add-int/lit8 v0, v0, 0x40

    .line 158
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    goto :goto_3

    :cond_b
    const/16 p2, 0xf7

    .line 161
    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 162
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 164
    :goto_3
    iget-object p2, p0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    aget p2, p2, v5

    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    goto :goto_7

    :cond_c
    if-eqz v3, :cond_d

    if-nez v4, :cond_d

    if-ge v6, p2, :cond_d

    if-ne v7, v6, :cond_d

    const/4 v10, -0x3

    if-lt v2, v10, :cond_d

    add-int/2addr v2, v9

    .line 172
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 173
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_7

    :cond_d
    if-eqz v3, :cond_e

    if-nez v4, :cond_e

    if-ne p2, v7, :cond_e

    if-gt v2, v8, :cond_e

    add-int/lit16 p2, v2, 0xfb

    .line 179
    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 180
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    :goto_4
    if-ge v5, v2, :cond_10

    .line 182
    iget-object p2, p0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    add-int v0, v7, v5

    aget p2, p2, v0

    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    const/16 p2, 0xff

    .line 186
    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 187
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 188
    invoke-virtual {p0, v6}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    const/4 p2, 0x0

    :goto_5
    if-ge p2, v6, :cond_f

    .line 190
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    aget v0, v0, p2

    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 191
    :cond_f
    invoke-virtual {p0, v4}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    :goto_6
    if-ge v5, v4, :cond_10

    .line 193
    iget-object p2, p0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    aget p2, p2, v5

    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 195
    :cond_10
    :goto_7
    iput v6, p0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 196
    iput v4, p0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 197
    iget p1, p1, Lgnu/bytecode/Label;->position:I

    iput p1, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 198
    iget p1, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    add-int/2addr p1, v1

    iput p1, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    return-void
.end method

.method emitVerificationType(I)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    .line 49
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    shr-int/lit8 p1, p1, 0x8

    .line 51
    invoke-virtual {p0, p1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    :cond_0
    return-void
.end method

.method encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lgnu/bytecode/UninitializedType;

    if-eqz v1, :cond_2

    .line 61
    check-cast p1, Lgnu/bytecode/UninitializedType;

    .line 62
    iget-object p1, p1, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    if-nez p1, :cond_1

    const/4 p1, 0x6

    return p1

    .line 66
    :cond_1
    iget p1, p1, Lgnu/bytecode/Label;->position:I

    shl-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x8

    return p1

    .line 70
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 71
    instance-of v1, p1, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_6

    .line 73
    iget-object p1, p1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x46

    if-eq p1, p2, :cond_5

    const/16 p2, 0x53

    if-eq p1, p2, :cond_4

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_4

    const/16 p2, 0x49

    if-eq p1, p2, :cond_4

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1

    :cond_4
    :pswitch_1
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x2

    return p1

    .line 87
    :cond_6
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v0, :cond_7

    const/4 p1, 0x5

    return p1

    .line 90
    :cond_7
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p2

    check-cast p1, Lgnu/bytecode/ObjectType;

    invoke-virtual {p2, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object p1

    iget p1, p1, Lgnu/bytecode/CpoolClass;->index:I

    shl-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x7

    return p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method extractVerificationType(II)I
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x7

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 250
    invoke-virtual {p0, p1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result p1

    shl-int/2addr p1, v0

    or-int/2addr p2, p1

    :cond_1
    return p2
.end method

.method extractVerificationTypes(III[I)I
    .locals 3

    :goto_0
    const/4 v0, -0x1

    add-int/2addr p2, v0

    if-ltz p2, :cond_3

    .line 276
    iget v1, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt p1, v1, :cond_0

    goto :goto_3

    .line 280
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    aget-byte v0, v0, p1

    .line 281
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationType(II)I

    move-result v1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x3

    :goto_2
    add-int/2addr p1, v0

    move v0, v1

    :goto_3
    add-int/lit8 v1, p3, 0x1

    .line 284
    aput v0, p4, p3

    move p3, v1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v0, Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 13

    const-string v0, "Attribute \""

    .line 325
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lgnu/bytecode/StackMapTableAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 327
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lgnu/bytecode/StackMapTableAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", number of entries: "

    .line 329
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 333
    invoke-virtual {p0}, Lgnu/bytecode/StackMapTableAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v0, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v0, v0

    add-int/2addr v1, v0

    const/4 v0, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 337
    :goto_0
    iget v8, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    if-ge v6, v8, :cond_f

    .line 339
    iget v8, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v3, v8, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v8, v3, 0x1

    .line 344
    invoke-virtual {p0, v3}, Lgnu/bytecode/StackMapTableAttr;->u1(I)I

    move-result v3

    add-int/2addr v7, v2

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_1

    and-int/lit8 v10, v3, 0x3f

    add-int/2addr v7, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v8, 0x1

    .line 349
    iget v11, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v10, v11, :cond_2

    goto/16 :goto_8

    .line 356
    :cond_2
    invoke-virtual {p0, v8}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v10

    add-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x2

    :goto_1
    const-string v10, "  offset: "

    .line 360
    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const/16 v10, 0x3f

    if-gt v3, v10, :cond_3

    const-string v3, " - same_frame"

    .line 364
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-le v3, v9, :cond_c

    const/16 v10, 0xf7

    if-ne v3, v10, :cond_4

    goto/16 :goto_4

    :cond_4
    const/16 v9, 0xf6

    if-gt v3, v9, :cond_5

    const-string v0, " - tag reserved for future use - "

    .line 378
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    goto/16 :goto_8

    :cond_5
    const/16 v9, 0xfa

    if-gt v3, v9, :cond_6

    rsub-int v3, v3, 0xfb

    const-string v9, " - chop_frame - undefine "

    .line 385
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v9, " locals"

    .line 387
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_6
    const/16 v9, 0xfb

    if-ne v3, v9, :cond_7

    const-string v3, " - same_frame_extended"

    .line 393
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    :goto_2
    move v3, v8

    goto/16 :goto_7

    :cond_7
    const/16 v9, 0xfe

    if-gt v3, v9, :cond_8

    add-int/lit16 v3, v3, -0xfb

    const-string v9, " - append_frame - define "

    .line 399
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v9, " more locals"

    .line 401
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    add-int v9, v1, v3

    .line 402
    invoke-static {v5, v9}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v5

    .line 403
    invoke-virtual {p0, v8, v3, v1, v5}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v8

    .line 404
    invoke-virtual {p0, v5, v1, v3, p1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    move v3, v8

    move v1, v9

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v1, v8, 0x1

    .line 410
    iget v3, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v1, v3, :cond_9

    goto/16 :goto_8

    .line 415
    :cond_9
    invoke-virtual {p0, v8}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v1

    add-int/lit8 v8, v8, 0x2

    const-string v3, " - full_frame.  Locals count: "

    .line 417
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 419
    invoke-static {v5, v1}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v3

    .line 420
    invoke-virtual {p0, v8, v1, v4, v3}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v5

    .line 421
    invoke-virtual {p0, v3, v4, v1, p1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    add-int/lit8 v8, v5, 0x1

    .line 423
    iget v9, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v8, v9, :cond_a

    goto :goto_8

    .line 428
    :cond_a
    invoke-virtual {p0, v5}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v8

    add-int/lit8 v5, v5, 0x2

    const-string v9, "    (end of locals)"

    .line 430
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 432
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_3
    add-int/2addr v9, v0

    if-ltz v9, :cond_b

    const/16 v10, 0x20

    .line 434
    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_3

    :cond_b
    const-string v9, "       Stack count: "

    .line 435
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1, v8}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 437
    invoke-static {v3, v8}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v3

    .line 438
    invoke-virtual {p0, v5, v8, v4, v3}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v5

    .line 439
    invoke-virtual {p0, v3, v4, v8, p1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    goto :goto_6

    :cond_c
    :goto_4
    if-gt v3, v9, :cond_d

    const-string v3, " - same_locals_1_stack_item_frame"

    goto :goto_5

    :cond_d
    const-string v3, " - same_locals_1_stack_item_frame_extended"

    .line 369
    :goto_5
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 371
    invoke-static {v5, v2}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v3

    .line 372
    invoke-virtual {p0, v8, v2, v4, v3}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v5

    .line 373
    invoke-virtual {p0, v3, v4, v2, p1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    :goto_6
    move v12, v5

    move-object v5, v3

    move v3, v12

    :goto_7
    if-gez v3, :cond_e

    const-string v0, "<ERROR - missing data>"

    .line 444
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_f
    :goto_8
    return-void
.end method

.method printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<bad verification type tag "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    shr-int/lit8 p1, p1, 0x8

    const-string v0, "uninitialized object created at "

    .line 234
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_0

    :pswitch_1
    shr-int/lit8 p1, p1, 0x8

    .line 229
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    const/4 v0, 0x7

    .line 230
    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_0

    :pswitch_2
    const-string p1, "uninitialized this"

    .line 225
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "null"

    .line 222
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "long"

    .line 219
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "double"

    .line 216
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "float"

    .line 213
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "integer"

    .line 210
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string p1, "top/unavailable"

    .line 207
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_5

    .line 299
    aget v2, p1, v0

    and-int/lit16 v3, v2, 0xff

    if-lt v0, p2, :cond_2

    const-string v4, "  "

    .line 303
    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x64

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0xa

    const/16 v5, 0x20

    if-ge v1, v4, :cond_1

    .line 309
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 310
    :cond_1
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 312
    :goto_1
    invoke-virtual {p4, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v4, ": "

    .line 313
    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v2, p4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V

    .line 315
    invoke-virtual {p4}, Lgnu/bytecode/ClassTypeWriter;->println()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    const/4 v2, 0x4

    if-ne v3, v2, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget v0, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lgnu/bytecode/StackMapTableAttr;->put2(II)V

    .line 43
    invoke-super {p0, p1}, Lgnu/bytecode/MiscAttr;->write(Ljava/io/DataOutputStream;)V

    return-void
.end method
