.class public Lgnu/kawa/slib/printf$frame1;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf$frame0;->lambda7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n126#1,2:126\n*E\n"
.end annotation


# instance fields
.field digs:Ljava/lang/Object;

.field ex:Ljava/lang/Object;

.field final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field sgn:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/printf$frame0;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3003

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:126"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/printf$frame1;->lambda8(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda8(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 127
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame1;->staticLink:Lgnu/kawa/slib/printf$frame0;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame0;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame1;->sgn:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame1;->digs:Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame1;->ex:Ljava/lang/Object;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object p1, v1, v2

    const/4 p1, 0x5

    aput-object p2, v1, p1

    const/4 p1, 0x6

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
