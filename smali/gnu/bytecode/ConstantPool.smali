.class public Lgnu/bytecode/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"


# static fields
.field public static final CLASS:B = 0x7t

.field public static final DOUBLE:B = 0x6t

.field public static final FIELDREF:B = 0x9t

.field public static final FLOAT:B = 0x4t

.field public static final INTEGER:B = 0x3t

.field public static final INTERFACE_METHODREF:B = 0xbt

.field public static final LONG:B = 0x5t

.field public static final METHODREF:B = 0xat

.field public static final NAME_AND_TYPE:B = 0xct

.field public static final STRING:B = 0x8t

.field public static final UTF8:B = 0x1t


# instance fields
.field count:I

.field hashTab:[Lgnu/bytecode/CpoolEntry;

.field locked:Z

.field pool:[Lgnu/bytecode/CpoolEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    add-int/2addr v0, v1

    .line 346
    new-array v0, v0, [Lgnu/bytecode/CpoolEntry;

    iput-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    const/4 v0, 0x1

    .line 347
    :goto_0
    iget v2, p0, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v0, v2, :cond_0

    .line 349
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 350
    invoke-virtual {p0, v0, v2}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 382
    :pswitch_1
    check-cast v3, Lgnu/bytecode/CpoolNameAndType;

    .line 383
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolUtf8;

    iput-object v2, v3, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    .line 384
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolUtf8;

    iput-object v2, v3, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    goto :goto_1

    .line 376
    :pswitch_2
    check-cast v3, Lgnu/bytecode/CpoolRef;

    .line 377
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ConstantPool;->getForcedClass(I)Lgnu/bytecode/CpoolClass;

    move-result-object v2

    iput-object v2, v3, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    .line 378
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {p0, v2, v4}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolNameAndType;

    iput-object v2, v3, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    goto :goto_1

    .line 370
    :pswitch_3
    check-cast v3, Lgnu/bytecode/CpoolString;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolUtf8;

    iput-object v2, v3, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    goto :goto_1

    .line 366
    :pswitch_4
    check-cast v3, Lgnu/bytecode/CpoolClass;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolUtf8;

    iput-object v2, v3, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    goto :goto_1

    .line 362
    :pswitch_5
    check-cast v3, Lgnu/bytecode/CpoolValue2;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lgnu/bytecode/CpoolValue2;->value:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :pswitch_6
    check-cast v3, Lgnu/bytecode/CpoolValue1;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v3, Lgnu/bytecode/CpoolValue1;->value:I

    goto :goto_1

    .line 354
    :pswitch_7
    check-cast v3, Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    :goto_1
    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolClass;
    .locals 4

    .line 109
    invoke-static {p1}, Lgnu/bytecode/CpoolClass;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    .line 112
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 114
    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 115
    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 117
    iget v2, v1, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v2, :cond_1

    instance-of v2, v1, Lgnu/bytecode/CpoolClass;

    if-eqz v2, :cond_1

    .line 119
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/CpoolClass;

    .line 120
    iget-object v3, v2, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    if-ne v3, p1, :cond_1

    return-object v2

    .line 115
    :cond_1
    iget-object v1, v1, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_0

    .line 124
    :cond_2
    new-instance v1, Lgnu/bytecode/CpoolClass;

    invoke-direct {v1, p0, v0, p1}, Lgnu/bytecode/CpoolClass;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V

    return-object v1
.end method

.method public addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;
    .locals 1

    .line 102
    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 103
    iput-object p1, v0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    return-object v0
.end method

.method public addDouble(D)Lgnu/bytecode/CpoolValue2;
    .locals 1

    .line 184
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addValue2(IJ)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    return-object p1
.end method

.method public addFieldRef(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolRef;
    .locals 2

    .line 283
    iget-object v0, p1, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 285
    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object p1

    const/16 v1, 0x9

    .line 286
    invoke-virtual {p0, v1, v0, p1}, Lgnu/bytecode/ConstantPool;->addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;

    move-result-object p1

    return-object p1
.end method

.method public addFloat(F)Lgnu/bytecode/CpoolValue1;
    .locals 1

    .line 179
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/ConstantPool;->addValue1(II)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    return-object p1
.end method

.method public addInt(I)Lgnu/bytecode/CpoolValue1;
    .locals 1

    const/4 v0, 0x3

    .line 169
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/ConstantPool;->addValue1(II)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    return-object p1
.end method

.method public addLong(J)Lgnu/bytecode/CpoolValue2;
    .locals 1

    const/4 v0, 0x5

    .line 174
    invoke-virtual {p0, v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addValue2(IJ)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    return-object p1
.end method

.method public addMethodRef(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolRef;
    .locals 2

    .line 271
    iget-object v0, p1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    .line 277
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object p1

    .line 278
    invoke-virtual {p0, v1, v0, p1}, Lgnu/bytecode/ConstantPool;->addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;

    move-result-object p1

    return-object p1
.end method

.method public addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;
    .locals 4

    .line 229
    invoke-static {p1, p2}, Lgnu/bytecode/CpoolNameAndType;->hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    .line 232
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 234
    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 235
    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 237
    iget v2, v1, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v2, :cond_1

    instance-of v2, v1, Lgnu/bytecode/CpoolNameAndType;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lgnu/bytecode/CpoolNameAndType;

    iget-object v3, v2, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    if-ne v3, p2, :cond_1

    return-object v2

    .line 235
    :cond_1
    iget-object v1, v1, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_0

    .line 243
    :cond_2
    new-instance v1, Lgnu/bytecode/CpoolNameAndType;

    invoke-direct {v1, p0, v0, p1, p2}, Lgnu/bytecode/CpoolNameAndType;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)V

    return-object v1
.end method

.method public addNameAndType(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolNameAndType;
    .locals 1

    .line 221
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object p1

    .line 223
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object p1

    return-object p1
.end method

.method public addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;
    .locals 1

    .line 214
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object p1

    .line 216
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object p1

    return-object p1
.end method

.method public addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;
    .locals 7

    .line 249
    invoke-static {p2, p3}, Lgnu/bytecode/CpoolRef;->hashCode(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)I

    move-result v2

    .line 252
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    :cond_0
    const v0, 0x7fffffff

    and-int/2addr v0, v2

    .line 254
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v1

    rem-int/2addr v0, v3

    .line 255
    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 257
    iget v1, v0, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v2, v1, :cond_1

    instance-of v1, v0, Lgnu/bytecode/CpoolRef;

    if-eqz v1, :cond_1

    .line 259
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/CpoolRef;

    .line 260
    iget v3, v1, Lgnu/bytecode/CpoolRef;->tag:I

    if-ne v3, p1, :cond_1

    iget-object v3, v1, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    if-ne v3, p2, :cond_1

    iget-object v3, v1, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    if-ne v3, p3, :cond_1

    return-object v1

    .line 255
    :cond_1
    iget-object v0, v0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_0

    .line 266
    :cond_2
    new-instance v6, Lgnu/bytecode/CpoolRef;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgnu/bytecode/CpoolRef;-><init>(Lgnu/bytecode/ConstantPool;IILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)V

    return-object v6
.end method

.method public addString(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolString;
    .locals 4

    .line 194
    invoke-static {p1}, Lgnu/bytecode/CpoolString;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 199
    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 200
    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 202
    iget v2, v1, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v2, :cond_1

    instance-of v2, v1, Lgnu/bytecode/CpoolString;

    if-eqz v2, :cond_1

    .line 204
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/CpoolString;

    .line 205
    iget-object v3, v2, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    if-ne v3, p1, :cond_1

    return-object v2

    .line 200
    :cond_1
    iget-object v1, v1, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_0

    .line 209
    :cond_2
    new-instance v1, Lgnu/bytecode/CpoolString;

    invoke-direct {v1, p0, v0, p1}, Lgnu/bytecode/CpoolString;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V

    return-object v1
.end method

.method public final addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addString(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolString;

    move-result-object p1

    return-object p1
.end method

.method public addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;
    .locals 4

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 82
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 85
    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 86
    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 88
    iget v2, v1, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v2, :cond_1

    instance-of v2, v1, Lgnu/bytecode/CpoolUtf8;

    if-eqz v2, :cond_1

    .line 90
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/CpoolUtf8;

    .line 91
    iget-object v3, v2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    if-ne v3, p1, :cond_1

    return-object v2

    .line 86
    :cond_1
    iget-object v1, v1, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_0

    .line 95
    :cond_2
    iget-boolean v1, p0, Lgnu/bytecode/ConstantPool;->locked:Z

    if-nez v1, :cond_3

    .line 97
    new-instance v1, Lgnu/bytecode/CpoolUtf8;

    invoke-direct {v1, p0, v0, p1}, Lgnu/bytecode/CpoolUtf8;-><init>(Lgnu/bytecode/ConstantPool;ILjava/lang/String;)V

    return-object v1

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding new Utf8 entry to locked contant pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addValue1(II)Lgnu/bytecode/CpoolValue1;
    .locals 4

    .line 129
    invoke-static {p2}, Lgnu/bytecode/CpoolValue1;->hashCode(I)I

    move-result v0

    .line 132
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 134
    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 135
    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 137
    iget v2, v1, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v2, :cond_1

    instance-of v2, v1, Lgnu/bytecode/CpoolValue1;

    if-eqz v2, :cond_1

    .line 139
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/CpoolValue1;

    .line 140
    iget v3, v2, Lgnu/bytecode/CpoolValue1;->tag:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Lgnu/bytecode/CpoolValue1;->value:I

    if-ne v3, p2, :cond_1

    return-object v2

    .line 135
    :cond_1
    iget-object v1, v1, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_0

    .line 144
    :cond_2
    new-instance v1, Lgnu/bytecode/CpoolValue1;

    invoke-direct {v1, p0, p1, v0, p2}, Lgnu/bytecode/CpoolValue1;-><init>(Lgnu/bytecode/ConstantPool;III)V

    return-object v1
.end method

.method addValue2(IJ)Lgnu/bytecode/CpoolValue2;
    .locals 7

    .line 149
    invoke-static {p2, p3}, Lgnu/bytecode/CpoolValue2;->hashCode(J)I

    move-result v3

    .line 152
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    :cond_0
    const v0, 0x7fffffff

    and-int/2addr v0, v3

    .line 154
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 155
    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 157
    iget v1, v0, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v3, v1, :cond_1

    instance-of v1, v0, Lgnu/bytecode/CpoolValue2;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/CpoolValue2;

    .line 160
    iget v2, v1, Lgnu/bytecode/CpoolValue2;->tag:I

    if-ne v2, p1, :cond_1

    iget-wide v4, v1, Lgnu/bytecode/CpoolValue2;->value:J

    cmp-long v2, v4, p2

    if-nez v2, :cond_1

    return-object v1

    .line 155
    :cond_1
    iget-object v0, v0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_0

    .line 164
    :cond_2
    new-instance v6, Lgnu/bytecode/CpoolValue2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lgnu/bytecode/CpoolValue2;-><init>(Lgnu/bytecode/ConstantPool;IIJ)V

    return-object v6
.end method

.method public final getCount()I
    .locals 1

    .line 34
    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    return v0
.end method

.method getForced(II)Lgnu/bytecode/CpoolEntry;
    .locals 2

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 308
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 311
    iget-boolean v1, p0, Lgnu/bytecode/ConstantPool;->locked:Z

    if-nez v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 325
    :pswitch_1
    new-instance p2, Lgnu/bytecode/CpoolNameAndType;

    invoke-direct {p2}, Lgnu/bytecode/CpoolNameAndType;-><init>()V

    goto :goto_0

    .line 324
    :pswitch_2
    new-instance v0, Lgnu/bytecode/CpoolRef;

    invoke-direct {v0, p2}, Lgnu/bytecode/CpoolRef;-><init>(I)V

    goto :goto_1

    .line 321
    :pswitch_3
    new-instance p2, Lgnu/bytecode/CpoolString;

    invoke-direct {p2}, Lgnu/bytecode/CpoolString;-><init>()V

    goto :goto_0

    .line 320
    :pswitch_4
    new-instance p2, Lgnu/bytecode/CpoolClass;

    invoke-direct {p2}, Lgnu/bytecode/CpoolClass;-><init>()V

    goto :goto_0

    .line 319
    :pswitch_5
    new-instance v0, Lgnu/bytecode/CpoolValue2;

    invoke-direct {v0, p2}, Lgnu/bytecode/CpoolValue2;-><init>(I)V

    goto :goto_1

    .line 317
    :pswitch_6
    new-instance v0, Lgnu/bytecode/CpoolValue1;

    invoke-direct {v0, p2}, Lgnu/bytecode/CpoolValue1;-><init>(I)V

    goto :goto_1

    .line 315
    :pswitch_7
    new-instance p2, Lgnu/bytecode/CpoolUtf8;

    invoke-direct {p2}, Lgnu/bytecode/CpoolUtf8;-><init>()V

    :goto_0
    move-object v0, p2

    .line 327
    :goto_1
    iget-object p2, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aput-object v0, p2, p1

    .line 328
    iput p1, v0, Lgnu/bytecode/CpoolEntry;->index:I

    goto :goto_2

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "adding new entry to locked contant pool"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v1

    if-ne v1, p2, :cond_2

    :goto_2
    return-object v0

    .line 331
    :cond_2
    new-instance p2, Ljava/lang/ClassFormatError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conflicting constant pool tags at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getForcedClass(I)Lgnu/bytecode/CpoolClass;
    .locals 1

    const/4 v0, 0x7

    .line 337
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/CpoolClass;

    return-object p1
.end method

.method public final getPoolEntry(I)Lgnu/bytecode/CpoolEntry;
    .locals 1

    .line 43
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method rehash()V
    .locals 2

    .line 52
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_1

    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    if-lez v0, :cond_1

    .line 55
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v0, v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 57
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Lgnu/bytecode/CpoolEntry;->hashCode()I

    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const/16 v0, 0x65

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    :goto_1
    new-array v0, v0, [Lgnu/bytecode/CpoolEntry;

    iput-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    .line 65
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_4

    .line 67
    array-length v0, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    .line 69
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {v1, p0}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x1

    .line 292
    :goto_0
    iget v2, p0, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v0, v2, :cond_1

    .line 294
    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v2, p1}, Lgnu/bytecode/CpoolEntry;->write(Ljava/io/DataOutputStream;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    iput-boolean v1, p0, Lgnu/bytecode/ConstantPool;->locked:Z

    return-void
.end method
