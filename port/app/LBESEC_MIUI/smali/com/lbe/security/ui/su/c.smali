.class final Lcom/lbe/security/ui/su/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/su/SuEnableDialog;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/su/SuEnableDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/su/c;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/su/c;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-virtual {v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->finish()V

    return-void
.end method
