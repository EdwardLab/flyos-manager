.class final synthetic Lcom/dreamers/bubbletabbar/repack/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/view/ViewPropertyAnimator;

.field private final c:Landroid/widget/LinearLayout;

.field private final d:I

.field private final e:F


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/view/ViewPropertyAnimator;Landroid/widget/LinearLayout;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/repack/k;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/dreamers/bubbletabbar/repack/k;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p3, p0, Lcom/dreamers/bubbletabbar/repack/k;->c:Landroid/widget/LinearLayout;

    iput p4, p0, Lcom/dreamers/bubbletabbar/repack/k;->d:I

    iput p5, p0, Lcom/dreamers/bubbletabbar/repack/k;->e:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/k;->b:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/k;->c:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/dreamers/bubbletabbar/repack/k;->d:I

    iget v4, p0, Lcom/dreamers/bubbletabbar/repack/k;->e:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/dreamers/bubbletabbar/repack/h;->a(Landroid/widget/TextView;Landroid/view/ViewPropertyAnimator;Landroid/widget/LinearLayout;IFLandroid/animation/ValueAnimator;)V

    return-void
.end method
