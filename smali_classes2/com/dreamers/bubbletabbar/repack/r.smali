.class public final Lcom/dreamers/bubbletabbar/repack/r;
.super Lcom/dreamers/bubbletabbar/repack/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dreamers/bubbletabbar/repack/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dreamers/bubbletabbar/repack/s;-><init>(B)V

    new-instance v0, Lcom/dreamers/bubbletabbar/repack/r;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/dreamers/bubbletabbar/repack/r;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dreamers/bubbletabbar/repack/o;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()Z
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

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/dreamers/bubbletabbar/repack/r;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dreamers/bubbletabbar/repack/r;

    invoke-virtual {v0}, Lcom/dreamers/bubbletabbar/repack/r;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    check-cast p1, Lcom/dreamers/bubbletabbar/repack/r;

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

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
