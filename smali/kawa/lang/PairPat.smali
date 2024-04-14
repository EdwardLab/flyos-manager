.class public Lkawa/lang/PairPat;
.super Lkawa/lang/Pattern;
.source "PairPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field car:Lkawa/lang/Pattern;

.field private car_count:I

.field cdr:Lkawa/lang/Pattern;

.field private cdr_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 18
    iput-object p1, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    .line 19
    iput-object p2, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    .line 20
    invoke-virtual {p1}, Lkawa/lang/Pattern;->varCount()I

    move-result p1

    iput p1, p0, Lkawa/lang/PairPat;->car_count:I

    .line 21
    invoke-virtual {p2}, Lkawa/lang/Pattern;->varCount()I

    move-result p1

    iput p1, p0, Lkawa/lang/PairPat;->cdr_count:I

    return-void
.end method

.method public static make(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)Lkawa/lang/PairPat;
    .locals 1

    .line 26
    new-instance v0, Lkawa/lang/PairPat;

    invoke-direct {v0, p0, p1}, Lkawa/lang/PairPat;-><init>(Lkawa/lang/Pattern;Lkawa/lang/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 3

    .line 31
    instance-of v0, p1, Lgnu/lists/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 33
    :cond_0
    check-cast p1, Lgnu/lists/Pair;

    .line 34
    iget-object v0, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    iget v2, p0, Lkawa/lang/PairPat;->car_count:I

    add-int/2addr p3, v2

    invoke-virtual {v0, p1, p2, p3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<pair-pattern car: "

    .line 40
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    invoke-virtual {v0, p1}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    const-string v0, " cdr: "

    .line 42
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    invoke-virtual {v0, p1}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    const/16 v0, 0x3e

    .line 44
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

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

    .line 61
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkawa/lang/Pattern;

    iput-object v0, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    .line 62
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkawa/lang/Pattern;

    iput-object p1, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    return-void
.end method

.method public varCount()I
    .locals 2

    .line 47
    iget v0, p0, Lkawa/lang/PairPat;->car_count:I

    iget v1, p0, Lkawa/lang/PairPat;->cdr_count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lkawa/lang/PairPat;->car:Lkawa/lang/Pattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lkawa/lang/PairPat;->cdr:Lkawa/lang/Pattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
