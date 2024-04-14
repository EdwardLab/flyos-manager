.class public Lgnu/kawa/util/HashNode;
.super Ljava/lang/Object;
.source "HashNode.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public next:Lgnu/kawa/util/HashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 72
    instance-of v0, p1, Lgnu/kawa/util/HashNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    check-cast p1, Lgnu/kawa/util/HashNode;

    .line 78
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    iget-object p1, p1, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 46
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    return-object v0
.end method
