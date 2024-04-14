.class public Lgnu/kawa/slib/srfi1$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->unzip2(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n625#1,3:625\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda2recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lgnu/kawa/slib/srfi1$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame0;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    .line 625
    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    invoke-static {p0}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v1, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    aput-object v2, p0, v1

    const/4 v1, 0x1

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    aput-object v0, p0, v1

    invoke-static {p0}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 626
    :cond_0
    sget-object p0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame0;->lis:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->elt:Ljava/lang/Object;

    .line 627
    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-static {p0, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
