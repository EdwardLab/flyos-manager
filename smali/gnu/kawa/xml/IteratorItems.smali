.class public Lgnu/kawa/xml/IteratorItems;
.super Lgnu/mapping/MethodProc;
.source "IteratorItems.java"


# static fields
.field public static iteratorItems:Lgnu/kawa/xml/IteratorItems;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lgnu/kawa/xml/IteratorItems;

    invoke-direct {v0}, Lgnu/kawa/xml/IteratorItems;-><init>()V

    sput-object v0, Lgnu/kawa/xml/IteratorItems;->iteratorItems:Lgnu/kawa/xml/IteratorItems;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2

    .line 19
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 20
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 24
    check-cast v1, Ljava/util/Iterator;

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 32
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
