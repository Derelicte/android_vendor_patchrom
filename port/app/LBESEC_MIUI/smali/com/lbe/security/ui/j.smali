.class final Lcom/lbe/security/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/AppPermissionEditor;

.field private final synthetic b:Lcom/lbe/security/bean/k;

.field private final synthetic c:[Lcom/lbe/security/bean/h;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/AppPermissionEditor;Lcom/lbe/security/bean/k;[Lcom/lbe/security/bean/h;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/j;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    iput-object p2, p0, Lcom/lbe/security/ui/j;->b:Lcom/lbe/security/bean/k;

    iput-object p3, p0, Lcom/lbe/security/ui/j;->c:[Lcom/lbe/security/bean/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/lbe/security/ui/j;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-static {v0}, Lcom/lbe/security/ui/AppPermissionEditor;->a(Lcom/lbe/security/ui/AppPermissionEditor;)Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/j;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-static {v1}, Lcom/lbe/security/ui/AppPermissionEditor;->c(Lcom/lbe/security/ui/AppPermissionEditor;)Lcom/lbe/security/service/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/service/a/i;->d()Lcom/lbe/security/bean/e;

    move-result-object v1

    iget-object v2, p0, Lcom/lbe/security/ui/j;->b:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    iget-object v3, p0, Lcom/lbe/security/ui/j;->c:[Lcom/lbe/security/bean/h;

    iget-object v4, p0, Lcom/lbe/security/ui/j;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-static {v4}, Lcom/lbe/security/ui/AppPermissionEditor;->d(Lcom/lbe/security/ui/AppPermissionEditor;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/lbe/security/bean/h;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    return-void
.end method
