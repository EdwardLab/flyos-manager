.class public Lgnu/math/NamedUnit;
.super Lgnu/math/Unit;
.source "NamedUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field base:Lgnu/math/Unit;

.field chain:Lgnu/math/NamedUnit;

.field name:Ljava/lang/String;

.field scale:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLgnu/math/Unit;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 41
    iput-wide p2, p0, Lgnu/math/NamedUnit;->scale:D

    .line 42
    invoke-virtual {p0}, Lgnu/math/NamedUnit;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/math/DQuantity;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 32
    iget-wide v0, p2, Lgnu/math/DQuantity;->factor:D

    iput-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    .line 33
    iget-object p1, p2, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    iput-object p1, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 34
    invoke-virtual {p0}, Lgnu/math/NamedUnit;->init()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 62
    sget-object v1, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 63
    sget-object v1, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, v0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    if-ne v1, p0, :cond_0

    return-object v0

    .line 63
    :cond_0
    iget-object v0, v0, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;
    .locals 4

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 75
    sget-object v1, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 76
    sget-object v1, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 78
    iget-object v1, v0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    if-ne v1, p0, :cond_0

    iget-wide v1, v0, Lgnu/math/NamedUnit;->scale:D

    cmpl-double v3, v1, p1

    if-nez v3, :cond_0

    iget-object v1, v0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    if-ne v1, p3, :cond_0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, v0, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static make(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;
    .locals 1

    .line 86
    invoke-static {p0, p1, p2, p3}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lgnu/math/NamedUnit;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    :cond_0
    return-object v0
.end method

.method public static make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;
    .locals 5

    .line 93
    instance-of v0, p1, Lgnu/math/DQuantity;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Lgnu/math/DQuantity;

    iget-wide v0, v0, Lgnu/math/DQuantity;->factor:D

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    .line 99
    invoke-virtual {p1}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 100
    :goto_0
    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object p1

    .line 101
    invoke-static {p0, v0, v1, p1}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v2

    if-nez v2, :cond_1

    .line 102
    new-instance v2, Lgnu/math/NamedUnit;

    invoke-direct {v2, p0, v0, v1, p1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    :cond_1
    return-object v2

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defining "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using complex value"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 47
    iget-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    iget-object v2, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    iget-wide v2, v2, Lgnu/math/Unit;->factor:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lgnu/math/NamedUnit;->factor:D

    .line 48
    iget-object v0, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    iget-object v0, v0, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    iput-object v0, p0, Lgnu/math/NamedUnit;->dims:Lgnu/math/Dimensions;

    .line 49
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 51
    sget-object v1, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 52
    sget-object v1, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v1, v1, v0

    iput-object v1, p0, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    .line 53
    sget-object v1, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aput-object p0, v1, v0

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    .line 122
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/math/Unit;

    iput-object p1, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    iget-wide v1, p0, Lgnu/math/NamedUnit;->scale:D

    iget-object v3, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    invoke-static {v0, v1, v2, v3}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lgnu/math/NamedUnit;->init()V

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 113
    iget-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 114
    iget-object v0, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
