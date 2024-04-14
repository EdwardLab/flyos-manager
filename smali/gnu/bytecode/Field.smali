.class public Lgnu/bytecode/Field;
.super Lgnu/bytecode/Location;
.source "Field.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Lgnu/bytecode/Member;


# instance fields
.field attributes:Lgnu/bytecode/Attribute;

.field flags:I

.field next:Lgnu/bytecode/Field;

.field owner:Lgnu/bytecode/ClassType;

.field rfield:Ljava/lang/reflect/Field;

.field sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 28
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 29
    iput-object p0, p1, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    iput-object p0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    .line 32
    :goto_0
    iput-object p0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    .line 33
    iget v0, p1, Lgnu/bytecode/ClassType;->fields_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgnu/bytecode/ClassType;->fields_count:I

    .line 34
    iput-object p1, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public static searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 107
    :cond_0
    iget-object p0, p0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method assign_constants(Lgnu/bytecode/ClassType;)V
    .locals 2

    .line 73
    iget-object v0, p1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 74
    iget v1, p0, Lgnu/bytecode/Field;->name_index:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, p0, Lgnu/bytecode/Field;->name_index:I

    .line 76
    :cond_0
    iget v1, p0, Lgnu/bytecode/Field;->signature_index:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v0, p0, Lgnu/bytecode/Field;->signature_index:I

    .line 78
    :cond_1
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    return-void
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .line 12
    iget-object v0, p0, Lgnu/bytecode/Field;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public final getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 1

    .line 39
    iget-object v0, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getFlags()I
    .locals 1

    .line 54
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    return v0
.end method

.method public final getModifiers()I
    .locals 1

    .line 58
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    return v0
.end method

.method public final getNext()Lgnu/bytecode/Field;
    .locals 1

    .line 117
    iget-object v0, p0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    return-object v0
.end method

.method public declared-synchronized getReflectField()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;

    .line 86
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStaticFlag()Z
    .locals 1

    .line 50
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lgnu/bytecode/Field;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public final setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V
    .locals 2

    .line 128
    iget-object v0, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lgnu/bytecode/ConstantPool;

    invoke-direct {v0}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v0, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p2

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x46

    if-eq p2, v1, :cond_4

    const/16 v1, 0x53

    if-eq p2, v1, :cond_3

    const/16 v1, 0x5a

    if-eq p2, v1, :cond_2

    const/16 v1, 0x49

    if-eq p2, v1, :cond_3

    const/16 v1, 0x4a

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object p1

    goto :goto_0

    .line 154
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    goto :goto_0

    .line 139
    :pswitch_1
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    .line 141
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p1}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_3
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    .line 158
    :goto_0
    new-instance p2, Lgnu/bytecode/ConstantValueAttr;

    invoke-virtual {p1}, Lgnu/bytecode/CpoolEntry;->getIndex()I

    move-result p1

    invoke-direct {p2, p1}, Lgnu/bytecode/ConstantValueAttr;-><init>(I)V

    .line 159
    invoke-virtual {p2, p0}, Lgnu/bytecode/ConstantValueAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public final setStaticFlag(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 44
    iget p1, p0, Lgnu/bytecode/Field;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgnu/bytecode/Field;->flags:I

    goto :goto_0

    .line 46
    :cond_0
    iget p1, p0, Lgnu/bytecode/Field;->flags:I

    xor-int/lit8 p1, p1, -0x9

    iput p1, p0, Lgnu/bytecode/Field;->flags:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Field:"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget p2, p0, Lgnu/bytecode/Field;->flags:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    iget p2, p0, Lgnu/bytecode/Field;->name_index:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    iget p2, p0, Lgnu/bytecode/Field;->signature_index:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    return-void
.end method
