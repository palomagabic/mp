class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.integer :agno
      t.integer :rbd
      t.integer :dgv_rbd
      t.string :nom_rbd
      t.string :mrun
      t.integer :rut_sostenedor
      t.integer :p_juridica
      t.integer :cod_reg_rbd
      t.string :nom_reg_rbd_a
      t.integer :cod_pro_rbd
      t.integer :cod_com_rbd
      t.string :nom_com_rbd
      t.integer :cod_deprov_rbd
      t.string :nom_deprov_rbd
      t.integer :cod_depe
      t.integer :cod_depe2
      t.integer :rural_rbd
      t.string :latitud
      t.string :longitud
      t.integer :convenio_pie
      t.integer :ens_01
      t.integer :ens_02
      t.integer :ens_03
      t.integer :ens_04
      t.integer :ens_05
      t.integer :ens_06
      t.integer :ens_07
      t.integer :ens_08
      t.integer :ens_09
      t.integer :ens_10
      t.integer :ens_11
      t.integer :matricula
      t.integer :estado_estab
      t.integer :ori_religiosa
      t.string :ori_otro_glosa
      t.string :pago_matricula
      t.string :pago_mensual

      t.timestamps
    end
  end
end
