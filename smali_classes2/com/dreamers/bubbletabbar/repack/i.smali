.class final synthetic Lcom/dreamers/bubbletabbar/repack/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final a:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dreamers/bubbletabbar/repack/i;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/i;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/dreamers/bubbletabbar/repack/h;->a(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
