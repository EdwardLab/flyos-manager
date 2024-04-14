.class public Lgnu/kawa/slib/printf$frame8;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame8"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n154#1,4:154\n*E\n"
.end annotation


# instance fields
.field str:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 155
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    .line 156
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 157
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_0
    sget-object p1, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    const-string v3, "string-ref"

    invoke-direct {v1, v0, v3, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method
