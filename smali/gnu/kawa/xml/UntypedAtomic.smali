.class public Lgnu/kawa/xml/UntypedAtomic;
.super Ljava/lang/Object;
.source "UntypedAtomic.java"


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 30
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    check-cast p1, Lgnu/kawa/xml/UntypedAtomic;

    iget-object p1, p1, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    return-object v0
.end method
