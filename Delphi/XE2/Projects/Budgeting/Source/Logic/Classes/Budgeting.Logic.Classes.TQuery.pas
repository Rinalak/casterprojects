unit Budgeting.Logic.Classes.TQuery;

interface

type
  TQuery = class(TObject)
  public type
    sp_xxx_del = class(TObject)
    public const
      name = 'dbo.%s :AId';

    type
      Param = class
      public const
        Id = 'AId';
      end;

      Field = class(TObject)
      public const
        Result = 'result';
        message = 'message';
      end;
    end;

    sp_accounting_centers_sel = class(TObject)
    public const
      name = 'dbo.accounting_centers_sel :AId, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        Code = 'code';
        name = 'name';
        Description = 'description';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_accounting_centers_upd = class(TObject)
    public const
      name = 'dbo.accounting_centers_upd :AId, :ACode, :AName, :ADescription, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Code = 'ACode';
        name = 'AName';
        Description = 'ADescription';
        Activity = 'AActivity';
      end;
    end;

    sp_actual_budget_sel = class(TObject)
    public const
      name = 'dbo.actual_budget_sel :AId, :AActivity, :AId_BudgetItemType';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
        Id_BudgetItemType = 'AId_BudgetItemType';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        Id_BudgetItem = 'id_budget_item';
        BudgetItem = 'budget_item';
        Id_AccountingCenter = 'id_accounting_center';
        AccountingCenter = 'accounting_center';
        Id_Cosignatory = 'id_cosignatory';
        Cosignatory = 'cosignatory';
        Id_Product = 'id_product';
        Product = 'product';
        Id_Currency = 'id_currency';
        Currency = 'currency';
        Document = 'document';
        DocumentDate = 'document_date';
        Description = 'description';
        Amount = 'amount';
        Info = 'info';
      end;
    end;

    sp_actual_budget_upd = class(TObject)
    public const
      name = 'dbo.actual_budget_upd :AId, :AId_BudgetItem, :AId_AccountingCenter, :AId_Cosignatory, :AId_Product, :AId_Currency, :ADocument, :ADocumentDate, :ADescription, :AAmount';

    type
      Param = class
      public const
        Id = 'AId';
        Id_BudgetItem = 'AId_BudgetItem';
        Id_AccountingCenter = 'AId_AccountingCenter';
        Id_Cosignatory = 'AId_Cosignatory';
        Id_Product = 'AId_Product';
        Id_Currency = 'AId_Currency';
        Document = 'ADocument';
        DocumentDate = 'ADocumentDate';
        Description = 'ADescription';
        Amount = 'AAmount';
      end;
    end;

    sp_banks_sel = class(TObject)
    public const
      name = 'dbo.banks_sel :AId, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        name = 'name';
        Code = 'code';
        Address = 'address';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_banks_upd = class(TObject)
    public const
      name = 'dbo.banks_upd :AId, :AName, :ACode, :AAddress, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        name = 'AName';
        Code = 'ACode';
        Address = 'AAddress';
        Activity = 'AActivity';
      end;
    end;

    sp_xxx_upd = class(TObject)
    type
      Field = class(TObject)
      public const
        Result = 'result';
        message = 'message';
      end;
    end;

    sp_budget_items_sel = class(TObject)
    public const
      name = 'dbo.budget_items_sel :AId, :AActivity, :AId_BudgetItemType';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
        Id_BudgetItemType = 'AId_BudgetItemType';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        Id_BudgetItemType = 'id_budget_item_type';
        BudgetItemType = 'budget_item_type';
        Code = 'code';
        Description = 'description';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_budget_items_upd = class(TObject)
    public const
      name = 'dbo.budget_items_upd :AId, :ABudgetItemTypeId, :ACode, :ADescription, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Id_BudgetItemType = 'ABudgetItemTypeId';
        Code = 'ACode';
        Description = 'ADescription';
        Activity = 'AActivity';
      end;
    end;

    sp_budget_item_types_sel = class(TObject)
    public const
      name = 'dbo.budget_item_types_sel :AId, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        name = 'name';
        Sign = 'sign';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_budget_item_types_upd = class(TObject)
    public const
      name = 'dbo.budget_item_types_upd :AId, :AName, :ASign, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        name = 'AName';
        Sign = 'ASign';
        Activity = 'AActivity';
      end;
    end;

    sp_cosignatories_sel = class(TObject)
    public const
      name = 'dbo.cosignatories_sel :AId, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        Id_Bank = 'id_bank';
        Bank = 'bank';
        name = 'name';
        UNP = 'unp';
        Address = 'address';
        AgreementNumber = 'agreementnumber';
        AgreementStart = 'agreementstart';
        AgreementStop = 'agreementstop';
        Account = 'account';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_cosignatories_upd = class(TObject)
    public const
      name = 'dbo.cosignatories_upd :AId, :AId_Bank, :AName, :AUNP, :AAddress, :AAgreementNumber, :AAgreementStart, :AAgreementStop, :AAccount, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Id_Bank = 'AId_Bank';
        name = 'AName';
        UNP = 'AUNP';
        Address = 'AAddress';
        AgreementNumber = 'AAgreementNumber';
        AgreementStart = 'AAgreementStart';
        AgreementStop = 'AAgreementStop';
        Account = 'AAccount';
        Activity = 'AActivity';
      end;
    end;

    sp_currencies_sel = class(TObject)
    public const
      name = 'dbo.currencies_sel :AId, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        Code = 'code';
        Description = 'description';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_currencies_upd = class(TObject)
    public const
      name = 'dbo.currencies_upd :AId, :ACode, :ADescription, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Code = 'ACode';
        Description = 'ADescription';
        Activity = 'AActivity';
      end;
    end;

    sp_products_sel = class(TObject)
    public const
      name = 'dbo.products_sel :AId, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        Id_ProductType = 'id_product_type';
        ProductType = 'product_type';
        Code = 'code';
        Description = 'description';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_products_upd = class(TObject)
    public const
      name = 'dbo.products_upd :AId, :AId_ProductType, :ACode, :ADescription, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Id_ProductType = 'AId_ProductType';
        Code = 'ACode';
        Description = 'ADescription';
        Activity = 'AActivity';
      end;
    end;

    sp_product_types_sel = class(TObject)
    public const
      name = 'dbo.product_types_sel :AId, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        name = 'name';
        Activity = 'activity';
        Info = 'info';
      end;
    end;

    sp_product_types_upd = class(TObject)
    public const
      name = 'dbo.product_types_upd :AId, :AName, :AActivity';

    type
      Param = class
      public const
        Id = 'AId';
        name = 'AName';
        Activity = 'AActivity';
      end;
    end;

    sp_planned_budget_sel = class(TObject)
    public const
      name = 'dbo.planned_budget_sel :AId, :AActivity, :AId_BudgetItemType';

    type
      Param = class
      public const
        Id = 'AId';
        Activity = 'AActivity';
        Id_BudgetItemType = 'AId_BudgetItemType';
      end;

      Field = class(TObject)
      public const
        Id = 'id';
        Id_BudgetItem = 'id_budget_item';
        BudgetItem = 'budget_item';
        Id_AccountingCenter = 'id_accounting_center';
        AccountingCenter = 'accounting_center';
        Id_Currency = 'id_currency';
        Currency = 'currency';
        Year = 'year';
        Month = 'month';
        Amount = 'amount';
        Info = 'info';
      end;
    end;

    sp_planned_budget_upd = class(TObject)
    public const
      name = 'dbo.planned_budget_upd :AId, :AId_BudgetItem, :AId_AccountingCenter, :AId_Currency, :AYear, :AMonth, :AAmount';

    type
      Param = class
      public const
        Id = 'AId';
        Id_BudgetItem = 'AId_BudgetItem';
        Id_AccountingCenter = 'AId_AccountingCenter';
        Id_Currency = 'AId_Currency';
        Year = 'AYear';
        Month = 'AMonth';
        Amount = 'AAmount';
      end;
    end;

    sp_planned_budget_years_sel = class(TObject)
    public const
      name = 'dbo.planned_budget_years_sel :AYear';

    type
      Param = class
      public const
        Year = 'AYear';
      end;

      Field = class(TObject)
      public const
        Year = 'year';
      end;
    end;

    sp_summary_report_sel = class(TObject)
    public const
      name = 'dbo.summary_report_sel :AYear';

    type
      Param = class
      public const
        Year = 'AYear';
      end;

      Field = class(TObject)
      public const
        BudgetItem = 'budget_item';
        BudgetItemType = 'budget_item_type';
        AccountingCenter = 'accounting_center';
        Currency = 'currency';
        Month = 'month';
        PlannedAmount = 'planned_amount';
        ActualAmount = 'actual_amount';
        Balance = 'balance';
      end;
    end;
  end;

implementation

end.
