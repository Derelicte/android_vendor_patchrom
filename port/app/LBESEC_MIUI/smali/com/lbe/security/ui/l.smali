.class final Lcom/lbe/security/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/AppPermissionEditor;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/AppPermissionEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/l;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/l;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-virtual {v0}, Lcom/lbe/security/ui/AppPermissionEditor;->finish()V

    return-void
.end method
