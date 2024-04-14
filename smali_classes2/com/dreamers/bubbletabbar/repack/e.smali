.class public final Lcom/dreamers/bubbletabbar/repack/e;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:F

.field final c:F

.field final d:F

.field final e:F

.field final f:F

.field final g:F

.field final h:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dreamers/bubbletabbar/repack/e;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 9

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/repack/h;->a(I)F

    move-result v2

    const/16 p1, 0xf

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/repack/h;->a(I)F

    move-result v3

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/repack/h;->a(I)F

    move-result v4

    const/16 p1, 0x14

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/repack/h;->a(I)F

    move-result v5

    invoke-static {}, Lcom/dreamers/bubbletabbar/repack/h;->a()F

    move-result v6

    const/16 p1, 0x19

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/repack/h;->a(I)F

    move-result v7

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string p1, "DEFAULT"

    invoke-static {v8, p1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x777778

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dreamers/bubbletabbar/repack/e;-><init>(IFFFFFFLandroid/graphics/Typeface;)V

    return-void
.end method

.method public constructor <init>(IFFFFFFLandroid/graphics/Typeface;)V
    .locals 1

    const-string v0, "typeface"

    invoke-static {p8, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/e;->a:I

    iput p2, p0, Lcom/dreamers/bubbletabbar/repack/e;->b:F

    iput p3, p0, Lcom/dreamers/bubbletabbar/repack/e;->c:F

    iput p4, p0, Lcom/dreamers/bubbletabbar/repack/e;->d:F

    iput p5, p0, Lcom/dreamers/bubbletabbar/repack/e;->e:F

    iput p6, p0, Lcom/dreamers/bubbletabbar/repack/e;->f:F

    iput p7, p0, Lcom/dreamers/bubbletabbar/repack/e;->g:F

    iput-object p8, p0, Lcom/dreamers/bubbletabbar/repack/e;->h:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dreamers/bubbletabbar/repack/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dreamers/bubbletabbar/repack/e;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->a:I

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/e;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/e;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/e;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/e;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/e;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/e;->f:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->g:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/dreamers/bubbletabbar/repack/e;->g:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->h:Landroid/graphics/Typeface;

    iget-object p1, p1, Lcom/dreamers/bubbletabbar/repack/e;->h:Landroid/graphics/Typeface;

    invoke-static {v1, p1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/dreamers/bubbletabbar/repack/e;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->h:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleTabBarAttributes(disabledIconColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", verticalPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", iconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", titleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/e;->h:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
