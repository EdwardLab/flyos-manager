.class public Lgnu/kawa/slib/srfi1$frame63;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs$Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame63"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n782#1,7:782\n*E\n"
.end annotation


# instance fields
.field abort:Lkawa/lang/Continuation;

.field staticLink:Lgnu/kawa/slib/srfi1$frame62;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda85recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lgnu/kawa/slib/srfi1$frame64;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame64;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame64;->staticLink:Lgnu/kawa/slib/srfi1$frame63;

    iput-object p1, v0, Lgnu/kawa/slib/srfi1$frame64;->lists:Ljava/lang/Object;

    .line 782
    iget-object p1, v0, Lgnu/kawa/slib/srfi1$frame64;->lists:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, v0, Lgnu/kawa/slib/srfi1$frame64;->lambda$Fn65:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame64;->lambda$Fn66:Lgnu/expr/ModuleMethod;

    invoke-static {p1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 788
    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame63;->staticLink:Lgnu/kawa/slib/srfi1$frame62;

    iget-object v1, v1, Lgnu/kawa/slib/srfi1$frame62;->cars$Mnfinal:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v1, p1, v0

    invoke-static {p1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
