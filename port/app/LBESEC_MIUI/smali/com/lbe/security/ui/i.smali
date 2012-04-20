.class final Lcom/lbe/security/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/AppPermissionEditor;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/AppPermissionEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/i;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/i;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-static {v0, p2}, Lcom/lbe/security/ui/AppPermissionEditor;->a(Lcom/lbe/security/ui/AppPermissionEditor;I)V

    return-void
.end method
