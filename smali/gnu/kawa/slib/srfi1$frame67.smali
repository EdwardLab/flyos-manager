.class public Lgnu/kawa/slib/srfi1$frame67;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs$SlNoTest(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame67"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n793#1,6:793\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda92recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lgnu/kawa/slib/srfi1$frame68;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame68;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame68;->lists:Ljava/lang/Object;

    .line 793
    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame68;->lists:Ljava/lang/Object;

    invoke-static {p0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 794
    iget-object p0, v0, Lgnu/kawa/slib/srfi1$frame68;->lambda$Fn71:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame68;->lambda$Fn72:Lgnu/expr/ModuleMethod;

    invoke-static {p0, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 798
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v1, p0, v0

    invoke-static {p0}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
