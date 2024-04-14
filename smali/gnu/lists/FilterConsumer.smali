.class public Lgnu/lists/FilterConsumer;
.super Ljava/lang/Object;
.source "FilterConsumer.java"

# interfaces
.implements Lgnu/lists/XConsumer;


# instance fields
.field protected attributeType:Ljava/lang/Object;

.field protected base:Lgnu/lists/Consumer;

.field protected inAttribute:Z

.field protected skipping:Z


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    return-void
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    .line 214
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    sub-int/2addr p3, p2

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->append(C)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method protected beforeContent()V
    .locals 0

    return-void
.end method

.method protected beforeNode()V
    .locals 0

    return-void
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 157
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endAttribute()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endAttribute()V

    :cond_0
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lgnu/lists/FilterConsumer;->inAttribute:Z

    return-void
.end method

.method public endDocument()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    :cond_0
    return-void
.end method

.method public endEntity()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0}, Lgnu/lists/XConsumer;->endEntity()V

    :cond_0
    return-void
.end method

.method public ignoring()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1

    .line 102
    iput-object p1, p0, Lgnu/lists/FilterConsumer;->attributeType:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lgnu/lists/FilterConsumer;->inAttribute:Z

    .line 104
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 107
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 90
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 34
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 199
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 183
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 41
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 143
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeComment([CII)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 123
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeComment([CII)V

    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 55
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 48
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 62
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 69
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 171
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 134
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3, p4}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    :cond_0
    return-void
.end method
