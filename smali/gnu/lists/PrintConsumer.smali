.class public Lgnu/lists/PrintConsumer;
.super Ljava/io/PrintWriter;
.source "PrintConsumer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/Consumer;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;Z)V
    .locals 1

    .line 18
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/lists/ConsumerWriter;

    invoke-direct {v0, p1}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lgnu/lists/PrintConsumer;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(C)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 65
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/PrintWriter;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

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

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

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

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object p1

    return-object p1
.end method

.method public endAttribute()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement()V
    .locals 0

    return-void
.end method

.method protected endNumber()V
    .locals 0

    return-void
.end method

.method public ignoring()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected startNumber()V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 73
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->write(Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 78
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/PrintConsumer;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(Z)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 98
    invoke-virtual {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(D)V

    .line 99
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    return-void
.end method

.method public writeFloat(F)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 91
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(F)V

    .line 92
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    return-void
.end method

.method public writeInt(I)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 105
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(I)V

    .line 106
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    return-void
.end method

.method public writeLong(J)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 112
    invoke-virtual {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(J)V

    .line 113
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(Ljava/lang/Object;)V

    return-void
.end method
