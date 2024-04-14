.class public Lgnu/mapping/Values;
.super Lgnu/lists/TreeList;
.source "Values.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final empty:Lgnu/mapping/Values;

.field public static final noArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    sput-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    .line 15
    new-instance v1, Lgnu/mapping/Values;

    invoke-direct {v1, v0}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    sput-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    const/4 v0, 0x0

    .line 26
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 27
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static countValues(Ljava/lang/Object;)I
    .locals 1

    .line 243
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static make()Lgnu/mapping/Values;
    .locals 1

    .line 48
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0}, Lgnu/mapping/Values;-><init>()V

    return-object v0
.end method

.method public static make(Lgnu/lists/TreeList;)Ljava/lang/Object;
    .locals 2

    .line 88
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static make(Lgnu/lists/TreeList;II)Ljava/lang/Object;
    .locals 1

    if-eq p1, p2, :cond_3

    .line 100
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, p2, :cond_2

    .line 103
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0}, Lgnu/mapping/Values;-><init>()V

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    return-object v0

    :cond_2
    :goto_0
    shl-int/lit8 p1, p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 102
    :cond_3
    :goto_1
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0
.end method

.method public static make(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 70
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 72
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 73
    :cond_2
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0}, Lgnu/mapping/Values;-><init>()V

    .line 75
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 76
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static make([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 53
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 54
    aget-object p0, p0, v0

    return-object p0

    .line 55
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 56
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 58
    :cond_1
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0, p0}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static nextIndex(Ljava/lang/Object;I)I
    .locals 1

    .line 196
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 197
    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static nextValue(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 209
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    .line 211
    check-cast p0, Lgnu/mapping/Values;

    .line 212
    iget v0, p0, Lgnu/mapping/Values;->gapEnd:I

    if-lt p1, v0, :cond_0

    .line 213
    iget v0, p0, Lgnu/mapping/Values;->gapEnd:I

    iget v1, p0, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    .line 214
    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static varargs values([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1

    .line 222
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 224
    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final canonicalize()Ljava/lang/Object;
    .locals 3

    .line 115
    iget v0, p0, Lgnu/mapping/Values;->gapEnd:I

    iget-object v1, p0, Lgnu/mapping/Values;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 117
    iget v0, p0, Lgnu/mapping/Values;->gapStart:I

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    iget v2, p0, Lgnu/mapping/Values;->gapStart:I

    if-ne v1, v2, :cond_1

    .line 120
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .line 133
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    const-string v0, "#!void"

    .line 135
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 139
    array-length v0, v0

    const-string v0, "#<values"

    .line 142
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v0, 0x3e

    .line 159
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void

    :cond_1
    const/16 v2, 0x20

    .line 148
    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->write(I)V

    .line 149
    iget v2, p0, Lgnu/mapping/Values;->gapEnd:I

    if-lt v0, v2, :cond_2

    .line 150
    iget v2, p0, Lgnu/mapping/Values;->gapEnd:I

    iget v3, p0, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    instance-of v2, v0, Lgnu/text/Printable;

    if-eqz v2, :cond_3

    .line 153
    check-cast v0, Lgnu/text/Printable;

    invoke-interface {v0, p1}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 155
    :cond_3
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 169
    array-length v1, v0

    .line 170
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 172
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
