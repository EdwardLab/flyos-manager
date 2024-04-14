.class public Lgnu/kawa/xml/ListItems;
.super Lgnu/mapping/MethodProc;
.source "ListItems.java"


# static fields
.field public static listItems:Lgnu/kawa/xml/ListItems;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lgnu/kawa/xml/ListItems;

    invoke-direct {v0}, Lgnu/kawa/xml/ListItems;-><init>()V

    sput-object v0, Lgnu/kawa/xml/ListItems;->listItems:Lgnu/kawa/xml/ListItems;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3

    .line 20
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 21
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 25
    move-object p1, v1

    check-cast p1, Ljava/util/List;

    .line 26
    instance-of v2, v1, Lgnu/lists/AbstractSequence;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Lgnu/lists/AbstractSequence;

    const/4 p1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2, v0}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    return-void

    .line 31
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 35
    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method
