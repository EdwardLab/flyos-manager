.class public Lkawa/lib/misc_syntax$frame;
.super Lgnu/expr/ModuleBody;
.source "misc_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/misc_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmisc_syntax.scm\nScheme\n*S Scheme\n*F\n+ 1 misc_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm\n*L\n59#1,4:59\n*E\n"
.end annotation


# instance fields
.field k:Ljava/lang/Object;

.field p:Lgnu/mapping/InPort;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda4f()Ljava/lang/Object;
    .locals 3

    .line 59
    iget-object v0, p0, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    invoke-static {v0}, Lkawa/lib/ports;->read(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    invoke-static {v0}, Lkawa/lib/ports;->closeInputPort(Lgnu/mapping/InPort;)Ljava/lang/Object;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Lgnu/lists/Pair;

    iget-object v2, p0, Lkawa/lib/misc_syntax$frame;->k:Ljava/lang/Object;

    invoke-static {v2, v0}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkawa/lib/misc_syntax$frame;->lambda4f()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
