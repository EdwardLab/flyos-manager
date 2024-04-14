.class public Lcom/dreamers/bubbletabbar/repack/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dreamers/bubbletabbar/repack/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dreamers/bubbletabbar/repack/p;-><init>(B)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    const/4 v0, 0x1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Lcom/dreamers/bubbletabbar/repack/p;->a(II)I

    move-result v1

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/p;->a(II)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v1, v0}, Lcom/dreamers/bubbletabbar/repack/p;->a(II)I

    move-result p1

    sub-int/2addr p2, p1

    :goto_0
    iput p2, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    iput v0, p0, Lcom/dreamers/bubbletabbar/repack/o;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/dreamers/bubbletabbar/repack/o;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dreamers/bubbletabbar/repack/o;

    invoke-virtual {v0}, Lcom/dreamers/bubbletabbar/repack/o;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    check-cast p1, Lcom/dreamers/bubbletabbar/repack/o;

    iget v1, p1, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    iget p1, p1, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lcom/dreamers/bubbletabbar/repack/q;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    iget v2, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/dreamers/bubbletabbar/repack/q;-><init>(III)V

    check-cast v0, Lcom/dreamers/bubbletabbar/repack/m;

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " step 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
