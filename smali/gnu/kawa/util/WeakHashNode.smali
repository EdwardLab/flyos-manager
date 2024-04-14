.class public Lgnu/kawa/util/WeakHashNode;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashNode.java"

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
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public hash:I

.field public next:Lgnu/kawa/util/WeakHashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 25
    iput p3, p0, Lgnu/kawa/util/WeakHashNode;->hash:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lgnu/kawa/util/WeakHashNode;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    return-object v0
.end method
