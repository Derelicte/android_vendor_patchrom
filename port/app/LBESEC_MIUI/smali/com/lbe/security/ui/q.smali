.class final Lcom/lbe/security/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/y;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/y;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/q;->a:Lcom/lbe/security/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/q;->a:Lcom/lbe/security/ui/y;

    iget-object v0, v0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v0, p2}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;I)V

    return-void
.end method
