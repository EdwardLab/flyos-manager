.class public abstract Lgnu/lists/AbstractFormat;
.super Ljava/text/Format;
.source "AbstractFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public endAttribute(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, " "

    .line 58
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public endElement(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, ")"

    .line 47
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 102
    new-instance p3, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {p3}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 103
    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V

    .line 104
    invoke-virtual {p3}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {p3}, Lgnu/mapping/CharArrayOutPort;->close()V

    return-object p2
.end method

.method public format(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2

    .line 65
    instance-of v0, p2, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    .line 68
    iget-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 71
    :try_start_0
    iput-object p0, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 72
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iput-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw p1

    .line 80
    :cond_0
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .line 111
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".parseObject - not implemented"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAttribute(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    const-string p1, ": "

    .line 53
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public startElement(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "("

    .line 40
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    const-string p1, " "

    .line 42
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public write(ILgnu/lists/Consumer;)V
    .locals 0

    .line 15
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method protected write(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 0

    .line 10
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 0

    .line 35
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 2

    int-to-long v0, p1

    .line 30
    invoke-virtual {p0, v0, v1, p2}, Lgnu/lists/AbstractFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 0

    .line 22
    invoke-interface {p3, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
.end method

.method public final writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public final writeObject(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 3

    .line 90
    instance-of v0, p2, Lgnu/lists/Consumer;

    if-eqz v0, :cond_0

    .line 91
    check-cast p2, Lgnu/lists/Consumer;

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lgnu/mapping/OutPort;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 95
    check-cast p2, Lgnu/lists/Consumer;

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 96
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->close()V

    :goto_0
    return-void
.end method
