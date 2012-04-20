.class public Lcom/android/contacts/model/DataKind;
.super Ljava/lang/Object;
.source "DataKind.java"


# instance fields
.field public actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

.field public actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

.field public actionBodySocial:Z

.field public actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

.field public dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field public dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field public defaultValues:Landroid/content/ContentValues;

.field public editable:Z

.field public final editorLayoutResourceId:I

.field public fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType$EditField;",
            ">;"
        }
    .end annotation
.end field

.field public iconAltDescriptionRes:I

.field public iconAltRes:I

.field public mimeType:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public titleRes:I

.field public typeColumn:Ljava/lang/String;

.field public typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation
.end field

.field public typeOverallMax:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    .line 86
    const v0, 0x7f04009f

    iput v0, p0, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 1
    .parameter "mimeType"
    .parameter "titleRes"
    .parameter "weight"
    .parameter "editable"
    .parameter "editorLayoutResourceId"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    .line 91
    iput-object p1, p0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/android/contacts/model/DataKind;->titleRes:I

    .line 93
    iput p3, p0, Lcom/android/contacts/model/DataKind;->weight:I

    .line 94
    iput-boolean p4, p0, Lcom/android/contacts/model/DataKind;->editable:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 96
    iput p5, p0, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    .line 97
    return-void
.end method
