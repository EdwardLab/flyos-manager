.class public Lgnu/lists/PairWithPosition;
.super Lgnu/lists/ImmutablePair;
.source "PairWithPosition.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# instance fields
.field filename:Ljava/lang/String;

.field position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lgnu/lists/ImmutablePair;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-direct {p0, p2, p3}, Lgnu/lists/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 75
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result p2

    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lgnu/lists/PairWithPosition;->setLine(II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lgnu/lists/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;
    .locals 1

    .line 95
    new-instance v0, Lgnu/lists/PairWithPosition;

    invoke-direct {v0, p0, p1}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iput-object p2, v0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 97
    iput p3, v0, Lgnu/lists/PairWithPosition;->position:I

    return-object v0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;
    .locals 1

    .line 86
    new-instance v0, Lgnu/lists/PairWithPosition;

    invoke-direct {v0, p0, p1}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    iput-object p2, v0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, p3, p4}, Lgnu/lists/PairWithPosition;->setLine(II)V

    return-object v0
.end method


# virtual methods
.method public final getColumnNumber()I
    .locals 1

    .line 59
    iget v0, p0, Lgnu/lists/PairWithPosition;->position:I

    and-int/lit16 v0, v0, 0xfff

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 53
    iget v0, p0, Lgnu/lists/PairWithPosition;->position:I

    shr-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/lists/PairWithPosition;->car:Ljava/lang/Object;

    .line 118
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/lists/PairWithPosition;->cdr:Ljava/lang/Object;

    .line 119
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    .line 120
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    iput p1, p0, Lgnu/lists/PairWithPosition;->position:I

    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    return-void
.end method

.method public final setLine(I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lgnu/lists/PairWithPosition;->setLine(II)V

    return-void
.end method

.method public final setLine(II)V
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    shl-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    .line 26
    iput p1, p0, Lgnu/lists/PairWithPosition;->position:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lgnu/lists/PairWithPosition;->car:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lgnu/lists/PairWithPosition;->cdr:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lgnu/lists/PairWithPosition;->filename:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 111
    iget v0, p0, Lgnu/lists/PairWithPosition;->position:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
