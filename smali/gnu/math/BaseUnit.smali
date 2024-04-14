.class public Lgnu/math/BaseUnit;
.super Lgnu/math/NamedUnit;
.source "BaseUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static base_count:I = 0x0

.field private static final unitName:Ljava/lang/String; = "(name)"


# instance fields
.field dimension:Ljava/lang/String;

.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lgnu/math/NamedUnit;-><init>()V

    const-string v0, "(name)"

    .line 47
    iput-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 48
    iput v0, p0, Lgnu/math/BaseUnit;->index:I

    .line 49
    sget-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    iput-object v0, p0, Lgnu/math/BaseUnit;->dims:Lgnu/math/Dimensions;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lgnu/math/NamedUnit;-><init>()V

    .line 90
    iput-object p1, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lgnu/math/BaseUnit;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lgnu/math/NamedUnit;-><init>()V

    .line 96
    iput-object p1, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lgnu/math/BaseUnit;->init()V

    return-void
.end method

.method public static compare(Lgnu/math/BaseUnit;Lgnu/math/BaseUnit;)I
    .locals 2

    .line 136
    iget-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    iget-object v1, p1, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 139
    :cond_0
    iget-object p0, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 140
    iget-object p1, p1, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    if-nez p1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 147
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;
    .locals 3

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(name)"

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    .line 113
    sget-object p0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    return-object p0

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 115
    sget-object v1, Lgnu/math/BaseUnit;->table:[Lgnu/math/NamedUnit;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 116
    sget-object v1, Lgnu/math/BaseUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 118
    iget-object v1, v0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    if-ne v1, p0, :cond_1

    instance-of v1, v0, Lgnu/math/BaseUnit;

    if-eqz v1, :cond_1

    .line 120
    move-object v1, v0

    check-cast v1, Lgnu/math/BaseUnit;

    .line 121
    iget-object v2, v1, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    return-object v1

    .line 116
    :cond_1
    iget-object v0, v0, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;
    .locals 1

    .line 130
    invoke-static {p0, p1}, Lgnu/math/BaseUnit;->lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lgnu/math/BaseUnit;

    invoke-direct {v0, p0, p1}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDimension()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 101
    iget-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 2

    .line 54
    iput-object p0, p0, Lgnu/math/BaseUnit;->base:Lgnu/math/Unit;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 55
    iput-wide v0, p0, Lgnu/math/BaseUnit;->scale:D

    .line 56
    new-instance v0, Lgnu/math/Dimensions;

    invoke-direct {v0, p0}, Lgnu/math/Dimensions;-><init>(Lgnu/math/BaseUnit;)V

    iput-object v0, p0, Lgnu/math/BaseUnit;->dims:Lgnu/math/Dimensions;

    .line 57
    invoke-super {p0}, Lgnu/math/NamedUnit;->init()V

    .line 59
    sget v0, Lgnu/math/BaseUnit;->base_count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lgnu/math/BaseUnit;->base_count:I

    iput v0, p0, Lgnu/math/BaseUnit;->index:I

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 166
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    iget-object v1, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    invoke-static {v0, v1}, Lgnu/math/BaseUnit;->lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lgnu/math/BaseUnit;->init()V

    return-object p0
.end method

.method public unit()Lgnu/math/Unit;
    .locals 0

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
