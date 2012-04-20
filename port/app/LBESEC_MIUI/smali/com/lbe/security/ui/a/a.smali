.class final Lcom/lbe/security/ui/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/a/d;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/a/a;->a:Lcom/lbe/security/ui/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/a/a;->a:Lcom/lbe/security/ui/a/d;

    invoke-static {v0}, Lcom/lbe/security/ui/a/d;->d(Lcom/lbe/security/ui/a/d;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    return-void
.end method
