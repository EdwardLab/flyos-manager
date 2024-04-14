.class public final Lcom/dreamers/bubbletabbar/repack/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public g:Landroid/graphics/Typeface;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZIZ)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/g;->a:I

    iput-object p2, p0, Lcom/dreamers/bubbletabbar/repack/g;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/dreamers/bubbletabbar/repack/g;->c:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/dreamers/bubbletabbar/repack/g;->d:Z

    iput p5, p0, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    iput-boolean p6, p0, Lcom/dreamers/bubbletabbar/repack/g;->f:Z

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string p2, "DEFAULT"

    invoke-static {p1, p2}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/repack/g;->g:Landroid/graphics/Typeface;

    const p1, -0x777778

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/g;->n:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dreamers/bubbletabbar/repack/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dreamers/bubbletabbar/repack/g;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->a:I

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/g;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/dreamers/bubbletabbar/repack/g;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/dreamers/bubbletabbar/repack/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->d:Z

    iget-boolean v3, p1, Lcom/dreamers/bubbletabbar/repack/g;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->f:Z

    iget-boolean p1, p1, Lcom/dreamers/bubbletabbar/repack/g;->f:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/g;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->f:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MenuItem(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamers/bubbletabbar/repack/g;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
