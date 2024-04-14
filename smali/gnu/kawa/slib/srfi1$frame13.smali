.class public Lgnu/kawa/slib/srfi1$frame13;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->filterMap$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame13"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n969#1:969\n*E\n"
.end annotation


# instance fields
.field f:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda23recur(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lgnu/kawa/slib/srfi1$frame14;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame14;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame14;->staticLink:Lgnu/kawa/slib/srfi1$frame13;

    iput-object p1, v0, Lgnu/kawa/slib/srfi1$frame14;->lists:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi1$frame14;->res:Ljava/lang/Object;

    .line 969
    iget-object p1, v0, Lgnu/kawa/slib/srfi1$frame14;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    iget-object p2, v0, Lgnu/kawa/slib/srfi1$frame14;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
