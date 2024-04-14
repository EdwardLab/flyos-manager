.class public Lgnu/bytecode/ClassFileInput;
.super Ljava/io/DataInputStream;
.source "ClassFileInput.java"


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field str:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object p1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    .line 29
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readHeader()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p2

    iput-object p2, p1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 32
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readClassInfo()V

    .line 33
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readFields()V

    .line 34
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readMethods()V

    .line 35
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/ClassFormatError;

    const-string p2, "invalid magic number"

    invoke-direct {p1, p2}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static readClassType(Ljava/io/InputStream;)Lgnu/bytecode/ClassType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 44
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    .line 45
    new-instance v1, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v1, v0, p0}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method getClassConstant(I)Lgnu/bytecode/CpoolClass;
    .locals 2

    .line 351
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/CpoolClass;

    return-object p1
.end method

.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SourceFile"

    if-ne p1, v0, :cond_0

    .line 174
    instance-of v0, p3, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 176
    new-instance p1, Lgnu/bytecode/SourceFileAttr;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p2

    check-cast p3, Lgnu/bytecode/ClassType;

    invoke-direct {p1, p2, p3}, Lgnu/bytecode/SourceFileAttr;-><init>(ILgnu/bytecode/ClassType;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Code"

    if-ne p1, v1, :cond_2

    .line 178
    instance-of v1, p3, Lgnu/bytecode/Method;

    if-eqz v1, :cond_2

    .line 180
    new-instance p1, Lgnu/bytecode/CodeAttr;

    check-cast p3, Lgnu/bytecode/Method;

    invoke-direct {p1, p3}, Lgnu/bytecode/CodeAttr;-><init>(Lgnu/bytecode/Method;)V

    const/4 p2, -0x1

    .line 181
    iput p2, p1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 182
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p2

    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->setMaxStack(I)V

    .line 183
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p2

    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->setMaxLocals(I)V

    .line 184
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result p2

    .line 185
    new-array p2, p2, [B

    .line 186
    invoke-virtual {p0, p2}, Lgnu/bytecode/ClassFileInput;->readFully([B)V

    .line 187
    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->setCode([B)V

    .line 188
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_1

    .line 191
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p3

    .line 192
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    .line 193
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v2

    .line 194
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 195
    invoke-virtual {p1, p3, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    return-object p1

    :cond_2
    const-string v1, "LineNumberTable"

    if-ne p1, v1, :cond_4

    .line 200
    instance-of v1, p3, Lgnu/bytecode/CodeAttr;

    if-eqz v1, :cond_4

    .line 202
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 203
    new-array p2, p1, [S

    :goto_1
    if-ge v0, p1, :cond_3

    .line 206
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_3
    new-instance p1, Lgnu/bytecode/LineNumbersAttr;

    check-cast p3, Lgnu/bytecode/CodeAttr;

    invoke-direct {p1, p2, p3}, Lgnu/bytecode/LineNumbersAttr;-><init>([SLgnu/bytecode/CodeAttr;)V

    return-object p1

    :cond_4
    const-string v1, "LocalVariableTable"

    if-ne p1, v1, :cond_c

    .line 210
    instance-of v1, p3, Lgnu/bytecode/CodeAttr;

    if-eqz v1, :cond_c

    .line 212
    check-cast p3, Lgnu/bytecode/CodeAttr;

    .line 213
    new-instance p1, Lgnu/bytecode/LocalVarsAttr;

    invoke-direct {p1, p3}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 214
    invoke-virtual {p1}, Lgnu/bytecode/LocalVarsAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object p2

    .line 215
    iget-object v1, p1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    if-nez v1, :cond_5

    .line 216
    invoke-virtual {p2}, Lgnu/bytecode/Method;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v1

    iput-object v1, p1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 217
    :cond_5
    iget-object v1, p1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 218
    iget-object v2, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    if-nez v2, :cond_6

    .line 219
    new-instance v2, Lgnu/bytecode/Label;

    iget p3, p3, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-direct {v2, p3}, Lgnu/bytecode/Label;-><init>(I)V

    iput-object v2, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 220
    :cond_6
    invoke-virtual {p2}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p2

    .line 221
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p3

    .line 222
    iget-object v2, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    .line 223
    iget-object v3, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v3, v3, Lgnu/bytecode/Label;->position:I

    :goto_2
    if-ge v0, p3, :cond_b

    .line 226
    new-instance v4, Lgnu/bytecode/Variable;

    invoke-direct {v4}, Lgnu/bytecode/Variable;-><init>()V

    .line 227
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    .line 228
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    add-int/2addr v6, v5

    if-ne v5, v2, :cond_7

    if-eq v6, v3, :cond_a

    .line 233
    :cond_7
    :goto_3
    iget-object v2, v1, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    if-lt v5, v2, :cond_8

    iget-object v2, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    if-le v6, v2, :cond_9

    .line 235
    :cond_8
    iget-object v1, v1, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    goto :goto_3

    .line 237
    :cond_9
    new-instance v2, Lgnu/bytecode/Scope;

    new-instance v3, Lgnu/bytecode/Label;

    invoke-direct {v3, v5}, Lgnu/bytecode/Label;-><init>(I)V

    new-instance v7, Lgnu/bytecode/Label;

    invoke-direct {v7, v6}, Lgnu/bytecode/Label;-><init>(I)V

    invoke-direct {v2, v3, v7}, Lgnu/bytecode/Scope;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 238
    invoke-virtual {v2, v1}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    move-object v1, v2

    move v2, v5

    move v3, v6

    .line 242
    :cond_a
    invoke-virtual {v1, v4}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 243
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lgnu/bytecode/Variable;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 244
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lgnu/bytecode/Variable;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 245
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    iput v5, v4, Lgnu/bytecode/Variable;->offset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return-object p1

    :cond_c
    const-string v1, "Signature"

    if-ne p1, v1, :cond_d

    .line 249
    instance-of v1, p3, Lgnu/bytecode/Member;

    if-eqz v1, :cond_d

    .line 251
    new-instance p1, Lgnu/bytecode/SignatureAttr;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p2

    check-cast p3, Lgnu/bytecode/Member;

    invoke-direct {p1, p2, p3}, Lgnu/bytecode/SignatureAttr;-><init>(ILgnu/bytecode/Member;)V

    return-object p1

    :cond_d
    const-string v1, "StackMapTable"

    if-ne p1, v1, :cond_e

    .line 253
    instance-of v1, p3, Lgnu/bytecode/CodeAttr;

    if-eqz v1, :cond_e

    .line 255
    new-array p1, p2, [B

    .line 256
    invoke-virtual {p0, p1, v0, p2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 257
    new-instance p2, Lgnu/bytecode/StackMapTableAttr;

    check-cast p3, Lgnu/bytecode/CodeAttr;

    invoke-direct {p2, p1, p3}, Lgnu/bytecode/StackMapTableAttr;-><init>([BLgnu/bytecode/CodeAttr;)V

    return-object p2

    :cond_e
    const-string v1, "RuntimeVisibleAnnotations"

    if-eq p1, v1, :cond_f

    const-string v1, "RuntimeInvisibleAnnotations"

    if-ne p1, v1, :cond_10

    .line 259
    :cond_f
    instance-of v1, p3, Lgnu/bytecode/Field;

    if-nez v1, :cond_18

    instance-of v1, p3, Lgnu/bytecode/Method;

    if-nez v1, :cond_18

    instance-of v1, p3, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_10

    goto/16 :goto_6

    :cond_10
    const-string v1, "ConstantValue"

    if-ne p1, v1, :cond_11

    .line 269
    instance-of v1, p3, Lgnu/bytecode/Field;

    if-eqz v1, :cond_11

    .line 271
    new-instance p1, Lgnu/bytecode/ConstantValueAttr;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p2

    invoke-direct {p1, p2}, Lgnu/bytecode/ConstantValueAttr;-><init>(I)V

    return-object p1

    :cond_11
    const-string v1, "InnerClasses"

    if-ne p1, v1, :cond_13

    .line 273
    instance-of v1, p3, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_13

    .line 275
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    .line 276
    new-array p2, p1, [S

    :goto_4
    if-ge v0, p1, :cond_12

    .line 279
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 281
    :cond_12
    new-instance p1, Lgnu/bytecode/InnerClassesAttr;

    check-cast p3, Lgnu/bytecode/ClassType;

    invoke-direct {p1, p2, p3}, Lgnu/bytecode/InnerClassesAttr;-><init>([SLgnu/bytecode/ClassType;)V

    return-object p1

    :cond_13
    const-string v1, "EnclosingMethod"

    if-ne p1, v1, :cond_14

    .line 283
    instance-of v1, p3, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_14

    .line 285
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p1

    .line 286
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p2

    .line 287
    new-instance v0, Lgnu/bytecode/EnclosingMethodAttr;

    check-cast p3, Lgnu/bytecode/ClassType;

    invoke-direct {v0, p1, p2, p3}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(IILgnu/bytecode/ClassType;)V

    return-object v0

    :cond_14
    const-string v1, "Exceptions"

    if-ne p1, v1, :cond_16

    .line 289
    instance-of v1, p3, Lgnu/bytecode/Method;

    if-eqz v1, :cond_16

    .line 291
    check-cast p3, Lgnu/bytecode/Method;

    .line 292
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result p1

    .line 293
    new-array p2, p1, [S

    :goto_5
    if-ge v0, p1, :cond_15

    .line 295
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 296
    :cond_15
    invoke-virtual {p3, p2}, Lgnu/bytecode/Method;->setExceptions([S)V

    .line 297
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getExceptionAttr()Lgnu/bytecode/ExceptionsAttr;

    move-result-object p1

    return-object p1

    :cond_16
    const-string v1, "SourceDebugExtension"

    if-ne p1, v1, :cond_17

    .line 299
    instance-of v1, p3, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_17

    .line 301
    new-instance p1, Lgnu/bytecode/SourceDebugExtAttr;

    check-cast p3, Lgnu/bytecode/ClassType;

    invoke-direct {p1, p3}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 303
    new-array p3, p2, [B

    .line 304
    invoke-virtual {p0, p3, v0, p2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 305
    iput-object p3, p1, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    .line 306
    iput p2, p1, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    return-object p1

    .line 311
    :cond_17
    new-array p3, p2, [B

    .line 312
    invoke-virtual {p0, p3, v0, p2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 313
    new-instance p2, Lgnu/bytecode/MiscAttr;

    invoke-direct {p2, p1, p3}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[B)V

    return-object p2

    .line 265
    :cond_18
    :goto_6
    new-array v1, p2, [B

    .line 266
    invoke-virtual {p0, v1, v0, p2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 267
    new-instance p2, Lgnu/bytecode/RuntimeAnnotationsAttr;

    invoke-direct {p2, p1, v1, p3}, Lgnu/bytecode/RuntimeAnnotationsAttr;-><init>(Ljava/lang/String;[BLgnu/bytecode/AttrContainer;)V

    return-object p2
.end method

.method public readAttributes(Lgnu/bytecode/AttrContainer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 112
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v1, :cond_1

    .line 119
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, v3

    goto :goto_1

    .line 126
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 127
    iget-object v4, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v4, v4, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/CpoolUtf8;

    .line 129
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v5

    .line 130
    invoke-virtual {v4}, Lgnu/bytecode/CpoolUtf8;->intern()V

    .line 131
    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p1}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 134
    invoke-virtual {v4}, Lgnu/bytecode/Attribute;->getNameIndex()I

    move-result v5

    if-nez v5, :cond_2

    .line 135
    invoke-virtual {v4, v3}, Lgnu/bytecode/Attribute;->setNameIndex(I)V

    :cond_2
    if-nez v1, :cond_3

    .line 137
    invoke-interface {p1, v4}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    goto :goto_3

    .line 140
    :cond_3
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v3

    if-ne v3, v4, :cond_4

    .line 142
    invoke-virtual {v4}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v3

    invoke-interface {p1, v3}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v4, v3}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    .line 145
    :cond_4
    invoke-virtual {v1, v4}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    :goto_3
    move-object v1, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public readClassInfo()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 76
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 77
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassFileInput;->getClassConstant(I)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 78
    iget-object v0, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 83
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    move-object v4, v1

    check-cast v4, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassFileInput;->getClassConstant(I)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 88
    iget-object v0, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->setSuper(Ljava/lang/String;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    iget-object v1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-array v4, v0, [Lgnu/bytecode/ClassType;

    iput-object v4, v1, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 96
    iget-object v1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-array v4, v0, [I

    iput-object v4, v1, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    .line 100
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    aput v4, v5, v1

    .line 101
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v6, 0x7

    invoke-virtual {v5, v4, v6}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/CpoolClass;

    .line 103
    iget-object v4, v4, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 104
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Lgnu/bytecode/ConstantPool;

    invoke-direct {v0, p0}, Lgnu/bytecode/ConstantPool;-><init>(Ljava/io/DataInputStream;)V

    return-object v0
.end method

.method public readFields()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 320
    iget-object v1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 324
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    .line 325
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    .line 326
    iget-object v6, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->addField()Lgnu/bytecode/Field;

    move-result-object v6

    .line 327
    invoke-virtual {v6, v4, v1}, Lgnu/bytecode/Field;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 328
    invoke-virtual {v6, v5, v1}, Lgnu/bytecode/Field;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 329
    iput v3, v6, Lgnu/bytecode/Field;->flags:I

    .line 330
    invoke-virtual {p0, v6}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readFormatVersion()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    .line 62
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/high16 v3, 0x10000

    mul-int v1, v1, v3

    add-int/2addr v1, v0

    iput v1, v2, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    return-void
.end method

.method public readHeader()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readFormatVersion()V

    const/4 v0, 0x1

    return v0
.end method

.method public readMethods()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v2

    .line 340
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 341
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    .line 342
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 343
    invoke-virtual {v2, v3}, Lgnu/bytecode/Method;->setName(I)V

    .line 344
    invoke-virtual {v2, v4}, Lgnu/bytecode/Method;->setSignature(I)V

    .line 345
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final skipAttribute(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    sub-int v1, p1, v0

    int-to-long v1, v1

    .line 159
    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ClassFileInput;->skip(J)J

    move-result-wide v1

    long-to-int v2, v1

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->read()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 163
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF while reading class files attributes"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method
