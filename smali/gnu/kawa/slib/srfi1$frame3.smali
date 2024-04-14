.class public Lgnu/kawa/slib/srfi1$frame3;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->unzip4(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame3"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n642#1,3:642\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda8recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lgnu/kawa/slib/srfi1$frame4;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame4;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    .line 642
    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    invoke-static {p0}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v1, :cond_0

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v2, p0, v1

    const/4 v1, 0x1

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v2, p0, v1

    const/4 v1, 0x2

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v2, p0, v1

    const/4 v1, 0x3

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v0, p0, v1

    invoke-static {p0}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 643
    :cond_0
    sget-object p0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame4;->elt:Ljava/lang/Object;

    .line 644
    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame4;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame4;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-static {p0, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
