.class public Lkawa/lang/EqualPat;
.super Lkawa/lang/Pattern;
.source "EqualPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput-object p1, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    return-void
.end method

.method public static make(Ljava/lang/Object;)Lkawa/lang/EqualPat;
    .locals 1

    .line 20
    new-instance v0, Lkawa/lang/EqualPat;

    invoke-direct {v0, p0}, Lkawa/lang/EqualPat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 0

    .line 26
    iget-object p2, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    instance-of p2, p1, Lgnu/mapping/Symbol;

    if-eqz p2, :cond_0

    .line 27
    check-cast p1, Lgnu/mapping/Symbol;

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_0
    iget-object p2, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<equals: "

    .line 35
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    const/16 v0, 0x3e

    .line 37
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    return-void
.end method

.method public varCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
